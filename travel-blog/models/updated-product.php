<?php
require_once('connection-function.php');
require_once('control-func.php');
session_start();

    $no = $_POST['id'];
    $name = $_POST['name'];
    $hikeDate = $_POST['hikeDate'];
    $hikeTime = $_POST['hikeTime'];
    $place = $_POST['place'];
    $maxNumber = $_POST['maxNumber'];
    $daysNumber = $_POST['daysNumber'];
    $length = $_POST['length'];
    $experienceLevel = $_POST['experienceLevel'];
    $description = $_POST['description'];
    $shortDescription = $_POST['shortDescription'];
    $price = $_POST['price'];



    updateProduct($no, $name, $hikeDate, $hikeTime, $place, $maxNumber, $daysNumber, $length, $experienceLevel, $description, $shortDescription, $price);


    $_SESSION['update'] = "<h5 class='alert alert-success justify-content-center d-flex align-items-center'> PRODUCT  UPDATED  </h5>";

header('Location:../product-control.php');
