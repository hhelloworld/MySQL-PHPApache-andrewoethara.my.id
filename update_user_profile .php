<?php
session_start();




$conn = mysqli_connect($host, $user, $pass, $db);


if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}


$author_id = $_SESSION['author_id'];


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $author_id = $_POST['author_id'];


  $setClauses = array();


  $name = mysqli_real_escape_string($conn, $_POST['name']);
  $email = mysqli_real_escape_string($conn, $_POST['email']);
  $about_me = mysqli_real_escape_string($conn, $_POST['about_me']);


  $imageTempPath = $_FILES['profile_picture_path']['tmp_name'];
  $imageFileName = $_FILES['profile_picture_path']['name'];


  if (!empty($imageTempPath) && !empty($imageFileName)) {



    $uploadDirectory = '/home/andj7367/public_html/img/';
    $destination = $uploadDirectory . $imageFileName;

    if (move_uploaded_file($imageTempPath, $destination)) {
        $imageURL = 'https://andrewoethara.my.id/img/' . $imageFileName; // Replace 'yourwebsite.com' with your actual domain
      $setClauses[] = "profile_picture_path = '$imageURL'";
    } else {
      echo "Error uploading profile picture.";
    }
  }

  // Implement proper validation checks for other fields here
  if (!empty($name)) {
    $setClauses[] = "name = '$name'";
  }

  if (!empty($email)) {
    $setClauses[] = "email = '$email'";
  }

  if (!empty($about_me)) {
    $setClauses[] = "about_me = '$about_me'";
  }

  // If there are fields to update, build and execute the SQL statement using prepared statements
  if (!empty($setClauses)) {
    $setClause = implode(', ', $setClauses);

    // Use prepared statements to prevent SQL injection
    $sql = "UPDATE Authors SET $setClause WHERE author_id = ?";
    $stmt = mysqli_prepare($conn, $sql);

    if ($stmt) {
      // Bind the author_id parameter
      mysqli_stmt_bind_param($stmt, "i", $author_id);

      // Execute the statement
      if (mysqli_stmt_execute($stmt)) {
        echo "Data updated successfully.";
        $newUserData = fetchDataFromDatabase(); // Implement this function to fetch data from the database

        echo "data: " . json_encode($newUserData) . "\n\n";
        ob_flush();
        flush();
      } else {
        echo "Error updating data: " . mysqli_error($conn);
      }

      // Close the prepared statement
      mysqli_stmt_close($stmt);
    } else {
      echo "Error preparing the SQL statement: " . mysqli_error($conn);
    }
  } else {
    echo "No fields to update.";
  }
}

// Close the database connection
mysqli_close($conn);
?>
