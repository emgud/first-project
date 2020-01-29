<?php
require_once('connection-function.php');
session_start();
if (isset($_POST['user_id']) and isset($_POST['user_pass'])){


$username = $_POST['user_id'];
$password = $_POST['user_pass'];


$query = "SELECT * FROM login WHERE username='$username' and password='$password'";

$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
$count = mysqli_num_rows($result);


$_SESSION['success'] = true;



if ($count == 1){
  header("Location: ../controles.php");
//echo "Login Credentials verified";
// echo "<script type='text/javascript'>alert('Login Credentials verified')</script>";

}else{
// echo "<script type='text/javascript'>alert('Invalid Login Credentials')</script>";
  header("Location: ../login.php");
  // echo "<script type='text/javascript'>alert('Invalid Login Credentials')</script>";


}
}
