<?php
  include('connect.php');

  $user_name = mysqli_real_escape_string($conn, $_REQUEST['user_name']);
  $user_id = mysqli_real_escape_string($conn, $_REQUEST['user_id']);
  $category = mysqli_real_escape_string($conn, $_REQUEST['category']);
  $title = mysqli_real_escape_string($conn, $_REQUEST['title']);
  $date = mysqli_real_escape_string($conn, $_REQUEST['date']);
  $time = mysqli_real_escape_string($conn, $_REQUEST['time']);
  $target_dir = "uploads/";
  $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
  $uploadOk = 1;
  $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
  $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
  $filename=$_FILES['fileToUpload']['name'];
 if($check !== false) {
   echo "File is an image - " . $check["mime"] . ".";
   $uploadOk = 1;
 } else {
   echo "File is not an image.";
   $uploadOk = 0;
 }
 if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
   echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
 }
  $query = "INSERT INTO recipes_1 (user_name, user_id, category, title, date, time,image)
  VALUES('$user_name', '$user_id', '$category', '$title', '$date', '$time', '$filename')";
  if(mysqli_query($conn, $query)){

    header("location: post_recipe_2.php?uid=$user_id&name=$filename&category=$category&title=$title");
  } else{
      echo "ERROR: Could not able to execute $query. " . mysqli_error($conn);
  }

  mysqli_close($conn);
 ?>
 <?php
?>
