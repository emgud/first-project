<?php
include('header.php');
require_once('models/product-func.php');
if(!isset($_SESSION))
    {
        session_start();
    }
?>



<div class="container ">

<div class="row ">
  <div class="col mt-5  mb-5">
    <h3>Product Control Panel</h3>
  </div>
</div>
<div class="row dark-card d-flex justify-content-center">
  <div class="col m-5">
    <?php if (isset($_SESSION['delete']))
    {
    echo $_SESSION['delete'];
    unset($_SESSION['delete']);
  } ?>
  <?php if (isset($_SESSION['update']))
  {
  echo $_SESSION['update'];
  unset($_SESSION['update']);
} ?>
<?php if (isset($_SESSION['new']))
{
echo $_SESSION['new'];
unset($_SESSION['new']);
} ?>
  <?php

  $allProducts = getProducts();
  // if(mysqli_num_rows($result)>0){}
  while ($productInfo = mysqli_fetch_assoc($allProducts)) { ?>
<div class="row">
  <div class="col-5">
  <p class="mt-2 mr-3 font-admin"> <?php echo $productInfo['id'] . ". " . $productInfo['name']; ?></p>
</div>
<div class="col-2 ">
<?php  echo "<a href='models/delete-product.php?id=$productInfo[id] ' class='btn bg-danger del-btn ' > DELETE </a>"?>
</div>
<div class="col ">
<?php  echo  "<a href='update-page.php?id=$productInfo[id]' class='btn bg-info del-btn '>UPDATE</a> <br />"?>
</div>
</div>


<?php } ?>


  </div>
</div>
<div class="row mt-5">
  <div class="col mt-5 mb-5 justify-content-center d-flex">
    <a href="new-product.php">
      <button type="button" name="button" class="btn-lg bg-success "> ADD NEW PRODUCT</button>
    </a>
  </div>
</div>






















</div>





























<?php  include('footer.php') ?>
