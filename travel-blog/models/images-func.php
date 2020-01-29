<?php

require_once('connection-function.php');



function getIMG($no){
  $mySQL = "SELECT * FROM img WHERE id = '$no'";
  $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);
  $resultsArray = mysqli_fetch_assoc($resultsMysqlObj);

  return $resultsArray;


}

// $img =  getIMG(1);
