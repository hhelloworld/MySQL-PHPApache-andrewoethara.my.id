<?php

session_start();


if (isset($_SESSION['author_id'])) {
    // The session is still valid
    echo json_encode(['valid' => true]);
} else {

    session_destroy(); // Clear the session
    echo json_encode(['valid' => false]);
}
?>
