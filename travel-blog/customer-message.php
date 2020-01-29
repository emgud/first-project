<?php

require_once('models/connection-function.php');
require_once('models/messages-func.php');

session_start();

getConnection();

$name = $_POST['name'];
$email = $_POST['email'];
$message= $_POST['message'];

echo $name . " " . $email;


createMessage($name, $email, $message);

$_SESSION['message'] = "<b class='alert alert-success'> MESSAGE SENT!! </b>";




header("Location: contacts.php");
