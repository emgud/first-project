<?php
require_once('models/product-func.php');
// require_once('models/connection-function.php');

require_once('load-more.php');
include('header.php');
 ?>

<div class="container-fluid">

<main class="row mt-5 ml-5">
    <div class="col-12 mt-5 mb-5">
      <h4 class="d-flex justify-content-center"> We offer a vast variety of hiking tours for all levels of experience...</h4>
    </div>
    <?php

    $allProducts = getProducts(4);
    // if(mysqli_num_rows($result)>0){}
    while ($productInfo = mysqli_fetch_assoc($allProducts)) {?>
    <div class="col-5 item-card ml-5 mb-5 mt-5 " >
    <div class="card ml-5 product" >
      <div id="hike-offers" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
              <li data-target="#" data-slide-to="0" class="active"></li>
              <li data-target="#" data-slide-to="1"></li>
              <li data-target="#" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
              <div class="carousel-item active">
                  <img class="d-block w-100" src="img/europe-6.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block w-100" src="img/europe-5.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                  <img class="d-block w-100" src="img/europe-3.jpg" alt="Third slide">
              </div>
          </div>
      </div>
      <div class="card-body">
        <h5 class="card-title"> <?php echo $productInfo['name'] ?></h5>
        <b> €<?php echo $productInfo['price'] ?> </b>
        <p class="card-text p-text"><?php echo $productInfo['shortDescription'] ?></p>
        <?php echo "<a href='product-info.php?id=$productInfo[id]' class= 'btn bg-info'> MORE DETAILS</a> <br />" ?>
      </div>
    </div>
  </div>

<?php } ?>

<!-- LOAD MORE OPTION -->













<script type="text/javascript" src="products.js"></script>
