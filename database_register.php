<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);



use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'vendor/phpmailer/phpmailer/src/PHPMailer.php';
require 'vendor/phpmailer/phpmailer/src/SMTP.php';
require 'vendor/phpmailer/phpmailer/src/Exception.php';

$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];

$verificationToken = bin2hex(random_bytes(32)); 

$accountVerified = 0;

$mysqli = new mysqli($host, $user, $pass, $db);

if ($mysqli->connect_error) {
    $response = [
        'status' => 'error',
        'message' => 'Connection Failed: ' . $mysqli->connect_error,
    ];
} else {

    $stmt = $mysqli->prepare("SELECT email, account_verified, verification_token FROM Authors WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->bind_result($dbEmail, $accountVerified, $verificationToken);

    if ($stmt->fetch()) {
        if ($accountVerified == 0) {
            $stmt = $mysqli->prepare("UPDATE Authors SET verification_token = ? WHERE email = ?");
            $stmt->bind_param("ss", $verificationToken, $email);
            $stmt->execute();
            

            $mail = new PHPMailer;


            $mail->isSMTP();
            $mail->Host = 'mail.andrewoethara.my.id'; 
            $mail->SMTPAuth = true;

            $mail->Username = 'adminar@andrewoethara.my.id'; // Your SMTP username
            $mail->Password = 'lyS8U@yut7_o'; // Your SMTP password
            $mail->SMTPSecure = 'ssl'; // Enable SSL encryption
            $mail->Port = 465; // SMTP port
            $mail->SMTPDebug = false;

            // Set the sender and recipient email addresses
            $mail->setFrom('adminar@andrewoethara.my.id', 'Andrew'); // Change to your email and name
            $mail->addAddress($email, $name);

            // Set the email subject and content
            $mail->Subject = 'Email Verification';
            $mail->Body = 'Click the link below to verify your email address: ' . PHP_EOL .
                          'https://andrewoethara.my.id/verify.php?token=' . $verificationToken;

            // Send the email
            if (!$mail->send()) {
                $response = [
                    'status' => 'error',
                    'message' => 'Failed to resend verification email: ' . $mail->ErrorInfo,
                ];
            } else {
                $response = [
                    'status' => 'success',
                    'message' => 'Verification email has been resent. Please check your email for verification.',
                ];
            }
        } else {

            $response = [
                'status' => 'error',
                'message' => 'Email already exists and the account is verified.',
            ];
        }
    } else {

        $hashedPassword = password_hash($password, PASSWORD_BCRYPT);

        $stmt = $mysqli->prepare("INSERT INTO Authors (name, email, password, verification_token, account_verified) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssi", $name, $email, $hashedPassword, $verificationToken, $accountVerified);

        if ($stmt->execute()) {

            $mail = new PHPMailer;


            $mail->isSMTP();
            $mail->Host = 'mail.andrewoethara.my.id'; // Remove 'smtps://' and use your SMTP server address
            $mail->SMTPAuth = true;

            $mail->Username = 'adminar@andrewoethara.my.id'; // Your SMTP username
            $mail->Password = 'lyS8U@yut7_o'; // Your SMTP password
            $mail->SMTPSecure = 'ssl'; // Enable SSL encryption
            $mail->Port = 465; // SMTP port
            $mail->SMTPDebug = false;

            // Set the sender and recipient email addresses
            $mail->setFrom('adminar@andrewoethara.my.id', 'Andrew'); // Change to your email and name
            $mail->addAddress($email, $name);

            // Set the email subject and content
            $mail->Subject = 'Email Verification';
            $mail->Body = 'Click the link below to verify your email address: ' . PHP_EOL .
                          'https://andrewoethara.my.id/verify.php?token=' . $verificationToken;

            // Send the email
            if ($mail->send()) {
                $response = [
                    'status' => 'success',
                    'message' => 'Registration successful! Please check your email for verification.',
                ];
            } else {
                $response = [
                    'status' => 'error',
                    'message' => 'Failed to send verification email: ' . $mail->ErrorInfo,
                ];
            }
        } else {
            $response = [
                'status' => 'error',
                'message' => 'Failed to insert data: ' . $stmt->error,
            ];
        }

        $stmt->close();
    }

    $mysqli->close();
}

header('Content-Type: application/json');
echo json_encode($response);
?>
