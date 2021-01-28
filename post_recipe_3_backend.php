<?php
  include('connect.php');

  $ingredients = mysqli_real_escape_string($conn, $_REQUEST['ingredients']);
  $r1_id = mysqli_real_escape_string($conn, $_REQUEST['r1_id']);

  if($_SERVER["REQUEST_METHOD"] == "POST"){

  $query = "INSERT INTO ingredients (r1_id, incredients)
  VALUES('$r1_id', '$ingredients')";
  if(mysqli_query($conn, $query)){
    header("location: post_recipe_3.php?rid=$r1_id");
  } else{
      echo "ERROR: Could not able to execute $query. " . mysqli_error($conn);
  }

  mysqli_close($conn);
}
 ?>
