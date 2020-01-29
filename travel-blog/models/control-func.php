<?php

require_once('connection-function.php');

// ======================PRODUCTS=========================

function getProduct($no){
  $mySQL = "SELECT * FROM hikeOffers WHERE id = '$no'";
  $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);
  $resultsArray = mysqli_fetch_assoc($resultsMysqlObj);
  return $resultsArray;
}

// $product = getProduct($no);


function getProducts($no = 9999999){

  $mySQL = "SELECT * FROM hikeOffers LIMIT $no ";
  $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);

 //return grazins MysqlObj objecta
  return $resultsMysqlObj;
}


$allProducts = getProducts();


// $product= mysqli_fetch_assoc($allProducts);
// PRINTING ALL PRODUCTS THROUGH WHILE LOOP:
// while ($product = mysqli_fetch_assoc($allProducts)) {
//
// echo $product['name']. " " . $product['hikeDate']........
// }



function createProduct($name, $hikeDate,$hikeTime, $place, $maxNumber, $daysNumber,  $legth, $experienceLevel, $description, $shortDescription, $price){

  $mySQL = " INSERT INTO hikeOffers
                    VALUES (NULL, '$name', '$hikeDate', '$hikeTime', '$place', '$maxNumber', '$daysNumber',  '$legth', '$experienceLevel', '$description', '$shortDescription', '$price')
          ";
    $success = mysqli_query(getConnection(), $mySQL);

    if ($success == false && DEBUG_MODE > 0){
  echo "ERROR: Booking failed <br />";
  }
};





function updateProduct($no, $name, $hikeDate, $hikeTime, $place, $maxNumber, $daysNumber, $length, $experienceLevel, $Description, $shortDescription, $price){

  // $no =  htmlspecialchars($no, ENT_QUOTES);

  $manoSQL = " UPDATE hikeOffers
                  SET name ='$name',
                      hikeDate = '$hikeDate',
                      hikeTime = '$hikeTime',
                      place = '$place',
                      maxNumber = '$maxNumber',
                      daysNumber = '$daysNumber',
                      length = '$length',
                      experienceLevel = '$experienceLevel',
                      Description = '$Description',
                      shortDescription = '$shortDescription',
                      price = '$price'
                  WHERE id = '$no'
                  LIMIT 1

            ";
  $success= mysqli_query(getConnection(), $manoSQL);

  if ($success == false && DEBUG_MODE > 0){
    echo "ERROR : failed to update <br />";
    echo mysqli_error(getConnection());

  }
};
// updateProduct($no, $name, $hikeDate, $place, $maxNumber, $daysNumber,  $legth, $experienceLevel, $description, $shortDescription, $price);




function deleteProducts($no){

  $mySQL = "DELETE FROM hikeOffers
                      WHERE id = '$no'
                      LIMIT 1
  ";
  $sucess= mysqli_query(getConnection(), $mySQL);

  if ($sucess == false && DEBUG_MODE > 0){
    echo "ERROR : nepavyko istrinti  <br />";
  }

};

// deleteProducts();






// ============================CONTACTS========================

function updateContact($no, $name, $address, $map, $email, $phone){

  $mySQL = " UPDATE contacts
                  SET name ='$name',
                      address = '$address',
                      map = '$map',
                      email = '$email',
                      phone = '$phone',
                  WHERE id = '$no'
                  LIMIT 1

            ";
  $success= mysqli_query(getConnection(), $mySQL);

  if ($success == false && DEBUG_MODE > 0){
    echo "ERROR : Contacts not updated <br />";

  }
}



// ========================GET BOOKING INFO===========================

function getBookings($no = 9999999){

  $mySQL = "SELECT * FROM bookings LIMIT $no ";
  $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);

 //return grazins MysqlObj objecta
  return $resultsMysqlObj;
}


$allProducts = getProducts();
