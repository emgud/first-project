<?php

require_once('connection-function.php');




// GET PRODUCT:

function getProduct($no){
  $mySQL = "SELECT * FROM hikeOffers WHERE id = '$no'";
  $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);
  $resultsArray = mysqli_fetch_assoc($resultsMysqlObj);
  return $resultsArray;
}

// $product = getProduct($no);



// GET IMAGE:

function getIMG($no){
  $mySQL = "SELECT * FROM img WHERE id = '$no'";
  $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);
  $resultsArray = mysqli_fetch_assoc($resultsMysqlObj);
  return $resultsArray;
}


//get all images:

function getIMGS($no=9999999){
  $mySQL = "SELECT * FROM img LIMIT $no ";
  $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);
  return $resultsMysqlObj;

}


//GET ALL PRODUCTS:

function getProducts($no = 9999999){

  $mySQL = "SELECT * FROM hikeOffers LIMIT $no ";
  $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);

 //return grazins MysqlObj objecta
  return $resultsMysqlObj;
}

// $allProducts = getProducts();





// $product= mysqli_fetch_assoc($allProducts);
// PRINTING ALL PRODUCTS THROUGH WHILE LOOP:
// while ($product = mysqli_fetch_assoc($allProducts)) {
//
// echo $product['name']. " " . $product['hikeDate']........
// }



// Load more products per page

function getMoreProducts($limit, $offset){
  $mySQL = "SELECT * FROM hikeOffers LIMIT $limit, $offset";
  $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);
  return $resultsMysqlObj;
}


$moreProducts = getMoreProducts(3, 2);


$product= mysqli_fetch_assoc($moreProducts);

// echo $product;
// echo $product;
// while ($product = mysqli_fetch_assoc($moreProducts)) {
//
// echo $product['name']. " " . $product['hikeDate']........
// }




//CREATE NEW PRODUCT:

function createProduct($name, $hikeDate,$hikeTime, $place, $maxNumber, $daysNumber,  $legth, $experienceLevel, $description, $shortDescription, $price){

  $mySQL = " INSERT INTO hikeOffers
                    VALUES (NULL, '$name', '$hikeDate', '$hikeTime', '$place', '$maxNumber', '$daysNumber',  '$legth', '$experienceLevel', '$description', '$shortDescription', '$price')
          ";
    $success = mysqli_query(getConnection(), $mySQL);

    if ($success == false && DEBUG_MODE > 0){
  echo "ERROR: Booking failed <br />";
  }
};




//UPDATE PRODUCT:
function updateProduct($no, $name, $hikeDate, $hikeTime,  $place, $maxNumber, $daysNumber,  $legth, $experienceLevel, $description, $shortDescription, $price){

  $no =  htmlspecialchars($nr, ENT_QUOTES);

  $myanoSQL = " UPDATE hikeOffers
                  SET name ='$vardas',
                      hikeDate = '$hikeDate',
                      hikeTime = '$hikeTime',
                      place = $place,
                      maxNumber = $maxNumber,
                      daysNumber = $daysNumber,
                      length = $length,
                      experienceLevel = $experienceLevel,
                      description = $description,
                      shortDescription = $shortDescription;
                      price = $price,
                  WHERE id = '$no'
                  LIMIT 1

            ";
  $success= mysqli_query(getConnection(), $mySQL);

  if ($success == false && DEBUG_MODE > 0){
    echo "ERROR : failed to update <br />";

  }
};


// updateProduct($no, $name, $hikeDate, $place, $maxNumber, $daysNumber,  $legth, $experienceLevel, $description, $shortDescription, $price);




// DELETE PRODUCT:

function deleteProducts($no){

  $no = htmlspecialchars($no, ENT_QUOTES); //apsauga


  $mySQL = "DELETE FROM hikeOffers
                      WHERE id = '$no'
                      LIMIT 1
  ";
  $sucess= mysqli_query(getConnection(), $mySQL);

  if ($sucess == false && DEBUG_MODE > 0){
    echo "ERROR : nepavyko istrinti  <bry />";
  }

};

// deleteProducts();
