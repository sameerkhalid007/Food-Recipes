<?php
  include('connect.php');

  $steps = mysqli_real_escape_string($conn, $_REQUEST['steps']);
  $r1_id = mysqli_real_escape_string($conn, $_REQUEST['r1_id']);
  $date = mysqli_real_escape_string($conn, $_REQUEST['date']);
  $time = mysqli_real_escape_string($conn, $_REQUEST['time']);

  if($_SERVER["REQUEST_METHOD"] == "POST"){

  $query = "INSERT INTO procedures (r1_id, steps, date, time)
  VALUES('$r1_id', '$steps', '$date', '$time')";
  if(mysqli_query($conn, $query)){
    header("location: post_recipe_4.php?rid=$r1_id");
  } else{
      echo "ERROR: Could not able to execute $query. " . mysqli_error($conn);
  }

  mysqli_close($conn);
}
 ?>
