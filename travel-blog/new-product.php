<?php
include("header.php");
require_once('models/connection-function.php');
require_once('models/product-func.php');

 ?>


 <div class="container">
   <div class="row mt-5 ml-5 justify-content-center">
     <div class="col mt-5">
    <form class="mt-2" action="models/create-new-product.php" method="post" >
    <input class="mt-2" type="hidden" name="id" value="">
    <input class="mt-2" type="text" name="name" value="" placeholder="name"><br>
    <input class="mt-2" type="date" name="hikeDate" value="" placeholder="date"><br>
    <input class="mt-2"type="text" name="hikeTime" value=""  placeholder="time"><br />
    <input class="mt-2"  type="text" name="place" value=""  placeholder="place"><br />
    <input class="mt-2" type="text" name="maxNumber" value=""  placeholder="max number of people"><br />
    <input class="mt-2" type="text" name="daysNumber" value=""  placeholder="number of days"><br />
    <input class="mt-2" type="text" name="length" value=""  placeholder="length of hike"><br />
    <input class="mt-2" type="text" name="experienceLevel" value=""  placeholder="requiered experience level"><br />
    <textarea class="mt-2" name="description" rows="8" cols="80" placeholder="description"></textarea><br>
    <input class="mt-2" type="text" name="shortDescription" value=""  placeholder="short description"><br />
    <input  class="mt-2" type="text" name="price" value=""  placeholder="price"><br />
    <input type="submit" name="POST" value="POST" class="btn bg-info mt-3 mb-5">
  </form>
  </div>
  </div>
</div>

 </body>
 </html>




 <?php

 include('footer.php'); ?>
