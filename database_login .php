<?php


$email = $_POST['email'];
$password = $_POST['password'];

$mysqli = new mysqli($host, $user, $pass, $db);

if ($mysqli->connect_error) {
    $response = [
        'status' => 'error',
        'message' => 'Connection Failed: ' . $mysqli->connect_error,
    ];
} else {
    $stmt = $mysqli->prepare("SELECT email, password, account_verified FROM Authors WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->bind_result($dbEmail, $dbPassword, $accountVerified);

    if ($stmt->fetch() && password_verify($password, $dbPassword)) {
        if ($accountVerified == 1) {
            $response = [
                'status' => 'success',
                'message' => 'Login successful!',
            ];
        } else {
            $response = [
                'status' => 'error',
                'message' => 'Login failed. Your account is not verified.',
            ];
        }
    } else {
        $response = [
            'status' => 'error',
            'message' => 'Login failed. Invalid email or password.',
        ];
    }

    $stmt->close();
    $mysqli->close();
}

header('Content-Type: application/json');
echo json_encode($response);

?>
