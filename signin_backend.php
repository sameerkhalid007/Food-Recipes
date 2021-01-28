<?php
session_start();
include('connect.php');

  $username = $_POST['email'];
  $password = md5($_POST['password']);


// attempt login if no errors on form
  $query = "SELECT * FROM users WHERE email='$username' AND password='$password' LIMIT 1";
  $results = mysqli_query($conn, $query);

  if (mysqli_num_rows($results) == 1) { // user found
    // check if user is admin or user
    $logged_in_user = mysqli_fetch_assoc($results);
    if ($logged_in_user['usertype'] == 'admin') {
      $q= "SELECT * FROM users WHERE email='$username'";
      $r = mysqli_query($conn, $query);
     $res = mysqli_fetch_assoc($r);

     $_SESSION['fname']=$res['first_name'];
     $_SESSION['lname']=$res['last_name'];
     $_SESSION['uid']=$res['user_id'];
     $_SESSION["loggedin"]=true;

      $_SESSION['user'] = $logged_in_user;
      header('location: welcome.php');
    }else{
      $_SESSION['user'] = $logged_in_user;


        $q= "SELECT * FROM users WHERE email='$username'";
        $r = mysqli_query($conn, $query);
       $res = mysqli_fetch_assoc($r);
       $_SESSION['fname']=$res['first_name'];
       $_SESSION['lname']=$res['last_name'];
       $_SESSION['uid']=$res['user_id'];
       $_SESSION["loggedin"]=true;
     header('location: welcome.php');
    }
  }else {
    $errors="Wrong username/password combination";
    echo $errors;
  }

?>
