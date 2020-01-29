<?php
require_once("header.php");
include('models/contacts-func.php');
session_start();
 ?>



 <div class="container-fluid ">


   <div class="row mt-5 ">


     <main class=" mt-5 ml-5 contacts col-lg-5 col-md-12 col-sm-12  col-xs-12">
       <h3 class="mb-5 justify-content-center d-flex ">Got any questions? <br /> Feel free to shoot us a message</h3>
       <form class="row ml-5  card  pt-5 pl-4" action="customer-message.php" method="post">
         <div class="col-md-8 form-group col-sm-12">
           <input type="text"  name="name" class="form-control "  value="Jolanda" placeholder="Your Name">
         </div>
         <div class="col-8 form-group ">
           <input type="email" name="email" class="form-control " value="jolge@aa.aa" placeholder="Your Email Address">
         </div>
         <div class="col-10 form-group">
           <textarea name="message" class="form-control "  rows="6" cols="60" placeholder="Your message">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</textarea>
         </div> <br>
                 <div class="col-3">
           <input type="submit" name="submit" value="SEND" class="btn bg-info btn-form mb-3 send-message" disabled="disabled" ><br />
         </div>
         <?php if (isset($_SESSION['message']))
         {
         echo $_SESSION['message'];
         unset($_SESSION['message']);
       } ?> <br />
       </form>
       </main>

     <aside class=" mt-5 ml-5 col-lg-5 col-md-5  col-sm-12 col-xs-12">
       <div class="row justify-content-end d-flex">
         <div class="col-8 mt-4">
           <h3 class="mb-3 d-flex justify-content-center"> Our offices:  </h3>
         </div>
         <?php $allContacts = getContacts();
         $contactInfo = mysqli_fetch_assoc($allContacts);
           while ($contactInfo = mysqli_fetch_assoc($allContacts)) {?>
           <div class='card  col-8 mr-2 mb-5 mt-5'>
                 <div class='card-body  mt-3'>
                   <h5 class='card-title ' > <?php echo $contactInfo ['name'] ?> </h5>
                   <div class='card-text contact-info mb-2'> <b>Address: </b> <br> <?php echo $contactInfo ['address'] ?></div>
                   <div class='card-text contact-info mb-2'><b>Email :</b> <?php echo $contactInfo ['email'] ?></div>
                   <div class='card-text contact-info mb-2'> <b>Phone : </b> <?php echo$contactInfo ['phone'] ?></div>
                   <iframe class='mt-3 col-md-12 col-sm-12' src=' <?php echo $contactInfo['map'] ?> '></iframe>
                 </div>
                 </div>
               <?php }?>
             </div>
         </div>
     </aside>

   </div>







     </div>

























<?php

require_once("footer.php"); ?>
