<?php
header('Content-Type: application/json');



try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $author_id = $_POST['author_id'];
    $title = $_POST['title'];
    $content = $_POST['content'];
    $thumbnail_image = $_FILES['thumbnail_image']['tmp_name'];
    $glance = $_POST['glance'];

    if (empty($title) || empty($content) || empty($thumbnail_image) || empty($glance)) {
        echo json_encode(['status' => 'error', 'message' => 'Title, content, glance, and thumbnail image cannot be empty']);
    } else {
        $uploadDirectory = '/home/andj7367/public_html/img/';
        $destination = $uploadDirectory . $_FILES['thumbnail_image']['name'];

        if (move_uploaded_file($thumbnail_image, $destination)) {

            $slug = generateSlug($title);


            $sql = "INSERT INTO Articles (title, content, author_id, thumbnail_image, glance, slug) VALUES (:title, :content, :author_id, :thumbnail_image, :glance, :slug)";


            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':title', $title, PDO::PARAM_STR);
            $stmt->bindParam(':content', $content, PDO::PARAM_STR);
            $stmt->bindParam(':author_id', $author_id, PDO::PARAM_INT);
            $stmt->bindParam(':thumbnail_image', $_FILES['thumbnail_image']['name'], PDO::PARAM_STR);
            $stmt->bindParam(':glance', $glance, PDO::PARAM_STR);
            $stmt->bindParam(':slug', $slug, PDO::PARAM_STR);

            try {
                $stmt->execute();


                $articleId = $pdo->lastInsertId();
                $query = "SELECT a.article_id, u.name AS author_name, u.email AS author_email, u.profile_picture_path
                          FROM Articles a
                          JOIN Authors u ON a.author_id = u.author_id
                          WHERE a.article_id = :article_id";

                $stmt = $pdo->prepare($query);
                $stmt->bindParam(':article_id', $articleId, PDO::PARAM_INT);
                $stmt->execute();
                $articleData = $stmt->fetch(PDO::FETCH_ASSOC);

                echo json_encode(['status' => 'success', 'message' => 'Article created successfully', 'article' => $articleData]);
            } catch (PDOException $e) {
                echo json_encode(['status' => 'error', 'message' => 'Failed to create article: ' . $e->getMessage()]);
            }
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Failed to move the uploaded file']);
        }
    }
} else {
    echo json_encode(['status' => 'error', 'message' => 'Invalid request method']);
}


function generateSlug($title) {

    $slug = strtolower(str_replace(' ', '-', $title));

    $slug = preg_replace('/[^a-z0-9-]/', '', $slug);
    return $slug;
}
?>
