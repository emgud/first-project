<?php

// require_once('models/connection-function.php');
require_once('booking-func.php');

session_start();

getConnection();


$trip = $_POST['trip'];
$hikeDate = $_POST['hikeDate'];
$price = $_POST['price'];
$name = $_POST['name'];
$surname = $_POST['surname'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$people = $_POST['people'];
$comment = $_POST['comment'];




createBooking($trip, $hikeDate, $price, $name, $surname, $email, $phone, $people, $comment);

$_SESSION['booked'] = "<b class='alert alert-success'> Great! your booking was successful, we will get back to you within 24 hours! </b>";




header("Location: ../booked.php");
