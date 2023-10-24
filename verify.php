<?php


// Get the verification token from the URL
$verificationToken = $_GET['token'];

$mysqli = new mysqli($host, $user, $pass, $db);

if ($mysqli->connect_error) {
    echo "Connection Failed: " . $mysqli->connect_error;
    exit();
}

// Search for the user with the provided verification token
$stmt = $mysqli->prepare("SELECT author_id FROM Authors WHERE verification_token = ? AND account_verified = 0");
$stmt->bind_param("s", $verificationToken);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    // Verification token is valid, and the account is not already verified
    // Update the account_verified field to 1 (verified)
    $stmt = $mysqli->prepare("UPDATE Authors SET account_verified = 1 WHERE verification_token = ?");
    $stmt->bind_param("s", $verificationToken);

    if ($stmt->execute()) {
        echo "Your account has been verified. You can now log in.";
        // Add a JavaScript redirection to the login page
        echo "<script>setTimeout(function() { window.location.href = 'https://andrewoethara.my.id/login'; }, 2000);</script>";
    } else {
        echo "Failed to update verification status: " . $stmt->error;
    }
} else {
    echo "Invalid or expired verification link.";
}

$mysqli->close();
?>
