<?php
  include('connect.php');

  $name = mysqli_real_escape_string($conn, $_REQUEST['name']);
  $email = mysqli_real_escape_string($conn, $_REQUEST['email']);
  $message = mysqli_real_escape_string($conn, $_REQUEST['message']);
  $rid = mysqli_real_escape_string($conn, $_REQUEST['rid']);
  $date = mysqli_real_escape_string($conn, $_REQUEST['date']);
  $time = mysqli_real_escape_string($conn, $_REQUEST['time']);
  $id = mysqli_real_escape_string($conn, $_REQUEST['pid']);

  $query = "INSERT INTO comments (r1_id, name, email, comment, date, time)
  VALUES('$rid', '$name', '$email', '$message', '$date', '$time')";
  if(mysqli_query($conn, $query)){
    header("location: recipe-detail.php?item=$id");
  } else{
      echo "ERROR: Could not able to execute $query. " . mysqli_error($conn);
  }

  mysqli_close($conn);
 ?>
 <?php
?>
