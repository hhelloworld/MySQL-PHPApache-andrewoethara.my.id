<?php



try {
    $conn = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


    if (isset($_GET['email'])) {

        $email = $_GET['email'];


        $sql = "SELECT author_id, name, email, about_me, profile_picture_path FROM Authors WHERE email = :email";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':email', $email);
        $stmt->execute();
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($user) {

            header('Content-Type: application/json');
            echo json_encode($user);
        } else {

            http_response_code(404);
            echo json_encode(array("message" => "User not found"));
        }
    } else {

        http_response_code(400);
        echo json_encode(array("message" => "Email parameter is missing"));
    }
} catch (PDOException $e) {

    http_response_code(500);
    echo json_encode(array("message" => "Database error: " . $e->getMessage()));
}
?>
