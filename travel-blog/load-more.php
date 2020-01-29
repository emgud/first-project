<?php
require_once('models/connection-function.php');
require_once('models/product-func.php');


// echo "veikia";


  // code...




if(isset($_GET['offset'])&&isset($_GET['limit'])){

$limit = $_GET['limit'];
$offset = $_GET['offset'];

 $data = mysqli_query($connection, "SELECT * FROM hikeOffers LIMIT {$limit} OFFSET {$offset}");
//
//
// ?>
 <div class="container-fluid" >

 <main class="row mt-5 ml-5">

 <?php
//
// // if(mysqli_num_rows($result)>0){}
  while ($extraProduct = mysqli_fetch_assoc($data)) {?>
<div class="col-5 item-card ml-5 mb-5 mt-5">
<div class="card ml-5 product" >
<div id="hike-offers" class="carousel slide" data-ride="carousel">
 <ol class="carousel-indicators">
          <li data-target="#" data-slide-to="0" class="active"></li>
          <li data-target="#" data-slide-to="1"></li>
           <li data-target="#" data-slide-to="2"></li>
       </ol>
      <div class="carousel-inner">
                  <div class="carousel-item active">
               <img class="d-block w-100" src="img/5.jpg" alt="First slide">
          </div>
           <div class="carousel-item">
               <img class="d-block w-100" src="img/6.jpg" alt="Third slide">
          </div>
          <div class="carousel-item">
               <img class="d-block w-100" src="img/7.jpg" alt="Third slide">
           </div>
       </div>
   </div>
   <div class="card-body">
     <h5 class="card-title"> <?php echo $extraProduct['name'] ?></h5>
     <b> €<?php echo $extraProduct['price'] ?> </b>
     <p class="card-text"><?php echo $extraProduct['shortDescription'] ?></p>
     <?php echo "<a href='product-info.php?id=$extraProduct[id]' class= 'btn bg-info'> MORE DETAILS</a> <br />" ?>

   </div>
 </div>
 </div>
 <?php } } ?>




<script type="text/javascript" src="libs/jquery-3.4.1.min.js"> </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="libs/bootstrap/js/bootstrap.bundle.min.js"> </script>
 <!-- MANO JS pats zemiausias -->
<script type="text/javascript" src="js/main.js"></script>
