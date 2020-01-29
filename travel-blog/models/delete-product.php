<?php

require_once('connection-function.php');
require_once('control-func.php');
session_start();

$x = $_GET['id'];

deleteProducts($x);

$_SESSION['delete'] = "<h5 class='alert alert-success justify-content-center d-flex align-items-center'> Product DELETED  </h5>";

header("Location: ../product-control.php");
