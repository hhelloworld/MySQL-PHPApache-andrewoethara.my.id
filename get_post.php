<?php



function slugify($text) {
    $text = preg_replace('~[^\pL\d]+~u', '-', $text);
    $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
    $text = preg_replace('~[^-\w]+~', '', $text);
    $text = trim($text, '-');
    $text = preg_replace('~-+~', '-', $text);
    $text = strtolower($text);

    return $text;
}

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

if (isset($_GET['slug'])) {
    $slug = $_GET['slug'];

    $sql = "SELECT a.*, u.name AS author_name, u.email AS author_email, u.profile_picture_path
            FROM Articles a
            JOIN Authors u ON a.author_id = u.author_id
            WHERE a.slug = :slug";

    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':slug', $slug, PDO::PARAM_STR);
    $stmt->execute();

    $article = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$article) {
        http_response_code(404);
        echo json_encode(['error' => 'Article not found']);
    } else {
        $articleSlug = $article['slug'];
        $article['link'] = 'http://andrewoethara.my.id/article/' . $articleSlug;

        echo json_encode($article);
    }
} else {
    $sql = "SELECT a.*, u.name AS author_name, u.email AS author_email, u.profile_picture_path
            FROM Articles a
            JOIN Authors u ON a.author_id = u.author_id
            ORDER BY a.created_at DESC";

    $stmt = $pdo->query($sql);
    $articles = $stmt->fetchAll(PDO::FETCH_ASSOC);

    foreach ($articles as &$article) {
        $slug = $article['slug'];
        $article['link'] = 'http://andrewoethara.my.id/article/' . $slug;
    }

    echo json_encode($articles);
}
?>
