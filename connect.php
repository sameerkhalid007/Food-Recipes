<?php date_default_timezone_set("Asia/Kolkata"); ?>
<?php
/* Local Database*/

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cookfood_db";


// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}



?>
