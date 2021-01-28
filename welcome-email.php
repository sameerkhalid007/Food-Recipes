<?php
use PHPMailer\PHPMailer\PHPMailer;

require_once 'phpmailer/Exception.php';
require_once 'phpmailer/PHPMailer.php';
require_once 'phpmailer/SMTP.php';

$mail = new PHPMailer(true);

  $fn = $_GET['fn'];
  $ln = $_GET['ln'];
  $email = $_GET['email'];

  try{
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'cookfoodrecipes01@gmail.com'; // Gmail address which you want to use as SMTP server
    $mail->Password = 'cookfoodrecipes'; // Gmail address Password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port = '587';

    $mail->setFrom('cookfoodrecipes01@gmail.com'); // Gmail address which you used as SMTP server
    $mail->addAddress(''.$email.''); // Email address where you want to receive emails (you can use any of your gmail address including the gmail address which you used as SMTP server)
    $mail->addAddress('cookfoodrecipes01@gmail.com');

    include('head.php');

    $mail->isHTML(true);
    $mail->Subject = 'Cook Food Recipes';
    $mail->Body = '<head>
    <style>
    .full{width:650px;margin:auto;}
    .body{width:500px;margin:auto;}
    .part{text-align:center;}
    </style>
    </head>
    <body>
      <div class="full">
      <div class="body">
        <div class="part">
        <img src="https://www.helpguide.org/wp-content/uploads/fast-foods-candy-cookies-pastries-768.jpg" alt="logo">
        <br><br>
        <h2>Dear '.$fn." ".$ln.',</h2>
        <h3>Welcome to Cook Food Recipes, a community of makers and friendly folks sharing their recipes with the world.<br/><br/>Come explore your great recipes to the whole world with Cook Food Recipes and learn new recipes from Cook Food Recipes community.</h3><br/><br/>
        <a class="btn btn-lg btn-circle btn-outline-new-white" href="www.google.com">Cook Food Recipes</a>
      </div>
        <h3>Happy Cooking,<br/>'.$fn." ".$ln.', on the behalf of the Cook Food Recipes.</h3>
        </div>
    </body>';

    $mail->send();
    header("Location:signin.php");
  } catch (Exception $e){

  }
?>
