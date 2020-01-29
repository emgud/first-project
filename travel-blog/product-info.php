<?php
require_once('models/product-func.php');
require_once('header.php');

$x = $_GET['id'];
$product = getProduct($x);
?>

<div class="row mt-5 mb-5 d-flex justify-content-center ">
  <div class="col-10 dark-card">
    <div class="row">
      <div class="col">
        <h2 class="d-flex justify-content-center mt-4"> <?php echo $product["name"]  ?></h2>
      </div>
      <div class="col-2 mt-4">
        <a href="travel-with-us.php" class="btn btn-back">BACK TO ALL OFFERS</a>
      </div>
    </div>
    <div class="row mt-5">
      <div class="col">

        <!-- THIS WORKS: -->
        <div class="row">
          <div class="col-7 ml-5">
            <img src="img/7.jpg" alt="" class="product-pic1">
          </div>
          <div class="col">
            <div class="row">
              <div class="col-12">
                <img src="img/8.jpg" alt="" class="product-pic mb-1">
              </div>
              <div class="col-12">
                <img src="img/4.jpg" alt="" class="product-pic">
              </div>
            </div>

          </div>
        </div>

        <!-- new row -->
        <div class="row ml-5 mt-5">
          <div class="col">
            <div class="row ml-5">
              <div class="col-4">
                <h5 class="article-font">Distance: <?php echo $product["length"] ; ?></h5>
              </div>
              <div class="col-4 ml-5 d-flex justify-content-end">
                <h5 class="article-font d-flex justify-content-end ">Days: <?php echo $product["daysNumber"] ; ?> day</h5>
              </div>
            </div>
            <div class="row ml-5 mt-4">
              <div class="col-3">
                <h5 class="article-font">Date: <?php echo $product["hikeDate"] ; ?></h5>
              </div>
              <div class="col-3 ml-5 d">
                <h5 class="article-font">Time: <?php echo $product["hikeTime"] ; ?></h5>
              </div>
              <div class="col-4 ml-5 ">
                <h5 class="article-font ml-3">Place: <?php echo $product["place"] ; ?></h5>
              </div>
            </div>
            <div class="row ml-5 mt-4">
              <div class="col-3">
                <h5 class="article-font"> For groups of max <?php echo $product["maxNumber"] ; ?> people</h5>
              </div>
              <div class="col-4 ml-5 d">
                <h5 class="article-font"> Experience: <?php echo $product["experienceLevel"] ; ?></h5>
              </div>
            </div>
            <div class="row mt-4">
              <div class="col d-flex justify-content-end">
                <div class="col-2  ">
                  <h5 class="article-font">PRICE: $<?php echo $product["price"] ; ?></h5>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row ml-3 mr-3">
          </div>
            <p class="article-font m-3 mb-4 "><?php echo $product["Description"] ?></p>
          </div>
    </div>

      <div class="row mt-4 mb-5">
        <div class="col d-flex justify-content-center">
          <?php echo "<a href='booking-form.php?id=$product[id]' class= 'btn bg-info book'>BOOK</a>" ?>
        </div>
      </div>










  </div>
</div>






















<?php require_once('footer.php'); ?>
