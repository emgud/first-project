<?php
include('header.php');
require_once("models/control-func.php");
require_once("models/login-func.php");
if(!isset($_SESSION))
    {
        session_start();
    }

if ($_SESSION['success'] == true){

 ?>

<a href="product-control.php" >
  <button type="button" name="button" class="btn-lg bg-success justify-content-center d-flex align-items-center mb-2 mt-5 ml-5 cont-btn"> Products</button>
</a>
<a href="product-control.php"  >
  <button type="button" name="button" class="btn-lg bg-success justify-content-center d-flex align-items-center mb-2 ml-5 cont-btn"> Blog Posts </button>
</a>
<a href="product-control.php"  >
  <button type="button" name="button" class="btn-lg bg-success justify-content-center d-flex align-items-center mb-2 ml-5 cont-btn"> Tips  Tricks</button>
</a>
<a href="product-control.php"  >
  <button type="button" name="button" class="btn-lg bg-success justify-content-center d-flex align-items-center mb-2 ml-5 cont-btn"> About Us</button>
</a>
<a href="product-control.php"  >
  <button type="button" name="button" class="btn-lg bg-success justify-content-center d-flex align-items-center mb-2 ml-5 cont-btn"> Contacts </button>
</a>
<a href="bookings-control.php"  >
  <button type="button" name="button" class="btn-lg bg-success justify-content-center d-flex align-items-center mb-2 ml-5 cont-btn"> BOOKINGS </button>
</a>

<?php } else{
  header("Location: login.php");
} ?>



















<?php  include('footer.php') ?>
