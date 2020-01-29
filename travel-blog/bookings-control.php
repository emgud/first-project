<?php
include('header.php');
include('models/control-func.php');
 ?>

<div class="row mt-5 mb-5">
  <div class="row">
    <div class="col">
      <h3 class=" ml-5"> BOOKINGS: </h3>
    </div>
  </div>
  <div class="row mt-3">
    <div class="col dark-card mt-5 mb-5 ml-4">

      <?php

      $allBookings = getBookings();
      // if(mysqli_num_rows($result)>0){}
      while ($bookingtInfo = mysqli_fetch_assoc($allBookings)) {?>

        <table class=" ml-5 mb-3">

            <tr class="">

              <th  class="article-font ">Name</th>
              <th class="article-font">Surname</th>
              <th class="article-font">Email</th>
              <th class="article-font">Phone</th>
              <th class="article-font">Product</th>
              <th class="article-font">Date</th>
              <th class="article-font">Price</th>
              <th class="article-font">Number of People</th>
              <th class="article-font">Comment</th>
            </tr>

            <tr >
              <td class="article-font "><?php echo $bookingtInfo['name']; ?></td>
              <td class="article-font "><?php echo $bookingtInfo['surname']; ?></td>
              <td class="article-font "><?php echo $bookingtInfo['email']; ?></td>
              <td class="article-font "><?php echo $bookingtInfo['phone']; ?></td>
              <td class="article-font "><?php echo $bookingtInfo['productName']; ?></td>
              <td class="article-font "><?php echo $bookingtInfo['hikeDate']; ?></td>
              <td class="article-font "><?php echo $bookingtInfo['price']; ?></td>
              <td class="article-font "><?php echo $bookingtInfo['people']; ?></td>
              <br>
              <td class="article-font "><?php echo $bookingtInfo['comment']; ?></td>
            </tr>
        </table>

      <?php } ?>

    </div>




















    <!-- end of div and row -->

</div>























<?php

include("footer.php"); ?>
