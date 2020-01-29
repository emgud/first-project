<?php

require_once('models/product-func.php');
require_once('header.php');


$x = $_GET['id'];
$product = getProduct($x);


?>


<main class="mt-5">
<h1 class="d-flex justify-content-center"> You're about to book your next adventure... </h1>
<h3 class="d-flex justify-content-center mt-4 mb-4">Please fill out the form below: </h3>

<div class="col-8 dark-card mb-5 p-center mt-2">
<form class="" action="models/bookings.php" method="post" class="form-group  dark-card mb-5">
  <div class="row">
      <div class="col-4 mb-2 form-center mt-2">
        <h5 class="article-font mt-5" > Your next trip:   </h5>
        </div>
        <div class="col-4 mb-2 form-center">
          <input type="text" name="trip" value="<?php echo $product['name'] ?>" class="form-control ">
        </div>

        <div class="col-4 mb-2 form-center mt-2">
          <h5 class="article-font mt-1" > Date of your trip:   </h5>
          </div>
          <div class="col-4 mb-2 form-center">
            <input type="text" name="hikeDate" value="<?php echo $product['hikeDate'] ?>" class="form-control ">
          </div>
          <div class="col-4 mb-2 form-center mt-2">
            <h5 class="article-font mt-1" > Price:   </h5>
            </div>
            <div class="col-4 mb-5 form-center">
              <input type="text" name="price" value="$<?php echo $product['price'] ?>" class="form-control ">
            </div>


      <div class="col-4 mb-2 form-center">
        <input type="text" name="name" value="Leo" placeholder="Your Name" class="form-control d-flex justify-content-center  ">
      </div>
      <div class="col-4 mb-2 form-center">
        <input type="text" name="surname" value="Whatever" placeholder="Your Surname" class="form-control d-flex justify-content-center  ">
      </div>
      <div class="col-4 mb-2 form-center">
        <input type="email" name="email" value="leo@whatever.meh" placeholder=" Email Address" class="form-control d-flex justify-content-center  ">
      </div>
      <div class="col-4 mb-2 form-center">
        <input type="text" name="phone" value="02156985232" placeholder=" Phone" class="form-control d-flex justify-content-center  ">
      </div>
      <div class="col-4 mb-2 form-center mt-2">
        <p class="article-font">Please enter a number of people going:</p>
        <input type="text" name="people" value="5" class="form-control d-flex justify-content-center  ">
         </div>
         <div class="row">
           <div class="col form-center mb-3 tralala">
             <textarea name="comment" rows="5" cols="60" class="booking-comment" placeholder="Any further comments or questions you may have"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim venia.</textarea>
           </div>
         </div>
         </div>
         <div class="row">
           <div class="col form-center mb-5 ">
             <input type="submit" name="submit" value="BOOK NOW !" class="btn btn-back">
           </div>

         </div>

    </form>








  </div>
</div>




</main>






























<?php include('footer.php'); ?>
