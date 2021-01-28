<?php
  include('connect.php');

  $password = md5($_POST['password']);

  $sql ="INSERT INTO users(title, first_name, last_name, phone, email, password, usertype, date_time)
  values('$_POST[title]','$_POST[fname]','$_POST[lname]','$_POST[phone]','$_POST[email]','$password','user','$_POST[datetime]')";

  if($qsql = mysqli_query($conn,$sql))
  {
    echo "<script>setTimeout(\"location.href = 'signin.php';\",1500);</script>";
    #echo "<script>setTimeout(\"location.href = 'welcome-email.php?fn=$_POST[fname]&ln=$_POST[lname]&email=$_POST[email]';\",1500);</script>";
  }
  else
  {
    echo mysqli_error($conn);
  }
 ?>
