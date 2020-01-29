<?php
require_once('header.php');

 if(!isset($_SESSION))
     {
         session_start();
     }
  ?>








<div class="row mt-5">
  <div class="col justify-content-center d-flex">
      <?php if (isset($_SESSION['booked']))
      {
      echo $_SESSION['booked'];
      unset($_SESSION['booked']);
    }
    ?>
  </div>
  <div class="col-2 mt-4">
    <a href="travel-with-us.php" class="btn btn-back">BACK TO ALL OFFERS</a>
  </div>
</div>



















 <?php require_once('footer.php'); ?>
