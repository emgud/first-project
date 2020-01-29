<?php
require_once('models/connection-function.php');
require_once('models/control-func.php');
require_once('header.php');

$x = $_GET['id'];
$product = getProduct($x);
//gmp_test:
// echo $product['hikeTime'];
 ?>

<div class="container">
  <div class="row mt-5 mb-5 justify-content-center">
   <form class="mt-2" action="models/updated-product.php" method="post" >
   <input class="mt-2" type="hidden" name="id" value="<?php echo $product["id"] ?>">
   <input class="mt-2" type="text" name="name" value="<?php echo $product["name"] ?>" placeholder="name"><br>
   <input class="mt-2" type="date" name="hikeDate" value="<?php echo $product["hikeDate"] ?>" placeholder="date"><br>
   <input class="mt-2"type="text" name="hikeTime" value="<?php echo $product["hikeTime"] ?>"  placeholder="time"><br />
   <input class="mt-2"  type="text" name="place" value="<?php echo $product["place"] ?>"  placeholder="place"><br />
   <input class="mt-2" type="text" name="maxNumber" value="<?php echo $product["maxNumber"] ?>"  placeholder="max number of people"><br />
   <input class="mt-2" type="text" name="daysNumber" value="<?php echo $product["daysNumber"] ?>"  placeholder="number of days"><br />
   <input class="mt-2" type="text" name="length" value="<?php echo $product["length"] ?>"  placeholder="length of hike"><br />
   <input class="mt-2" type="text" name="experienceLevel" value="<?php echo $product["experienceLevel"] ?>"  placeholder="requiered experience level"><br />
   <textarea class="mt-2" name="description" rows="8" cols="80" placeholder="description"><?php echo $product["Description"] ?></textarea><br>
   <input class="mt-2" type="text" name="shortDescription" value="<?php echo $product["shortDescription"] ?>"  placeholder="short description"><br />
   <input  class="mt-2" type="text" name="price" value="<?php echo $product["price"] ?>"  placeholder="price"><br />
   <button type="submit" name="button" class="btn-lg bg-info mt-5">UPDATE</button>
 </form>
 </div>
 </div>

























<?php require_once('footer.php'); ?>
