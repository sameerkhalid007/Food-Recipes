<?php
  include('connect.php');

  $email = mysqli_real_escape_string($conn, $_REQUEST['subsemail']);
  $datetime = mysqli_real_escape_string($conn, $_REQUEST['subsdatetime']);

  if($_SERVER["REQUEST_METHOD"] == "POST"){

  $query = "INSERT INTO subscribers (email, date_time) VALUES('$email', '$datetime')";
  if(mysqli_query($conn, $query)){
    header("location: index.php");
  } else{
      echo "ERROR: Could not able to execute $query. " . mysqli_error($conn);
  }

  mysqli_close($conn);
}
 ?>
