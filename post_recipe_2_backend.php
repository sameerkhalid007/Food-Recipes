<?php
  include('connect.php');

  $description = mysqli_real_escape_string($conn, $_REQUEST['description']);
  $cook_time = mysqli_real_escape_string($conn, $_REQUEST['cook_time']);
  $prep_time = mysqli_real_escape_string($conn, $_REQUEST['prep_time']);
  $r1_id = mysqli_real_escape_string($conn, $_REQUEST['rid']);

  if($_SERVER["REQUEST_METHOD"] == "POST"){

  $query = "INSERT INTO recipes_2 (r1_id, description, cook_time, prep_time)
  VALUES('$r1_id', '$description', '$cook_time', '$prep_time')";
  if(mysqli_query($conn, $query)){
    header("location: post_recipe_3.php?rid=$r1_id");
  } else{
      echo "ERROR: Could not able to execute $query. " . mysqli_error($conn);
  }

  mysqli_close($conn);
}
 ?>
