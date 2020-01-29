<?php
require_once("header.php");
include('models/login-func.php');

 ?>

<div class="row">
  <div class="col d-flex justify-content-center">
    <form id="login-form" method="post" action="models/login-func.php"  class="ml-5 mt-5 ">
            <table border="0.5" class=" mt-3 ml-4" >
                <tr>
                    <td ><label for="user_id">User Name</label></td>
                    <td><input type="text" name="user_id" id="user_id"></td>
                </tr>
                <tr>
                    <td><label for="user_pass">Password</label></td>
                    <td><input type="password" name="user_pass" id="user_pass"></input></td>
                </tr>

                <tr>

                    <td><input type="submit" value="Submit" class="btn bg-success ml-3 mt-3 mb-2 mr-3"/>
                    <td><input type="reset" value="Reset" class="btn bg-success mt-3 mb-2 ml-3"/>

                </tr>
            </table>
        </form>
  </div>
</div>








     <?php

     include('footer.php'); ?>
