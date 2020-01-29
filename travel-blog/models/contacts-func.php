<?php
require_once('connection-function.php');







// kad butu galima dirbti su DB duomenimis:
  // $x = mysqli_query($connection);



  // $nr = yra konkretus ID is duomenu bazes

  function getContact($no){
    $mySQL = "SELECT * FROM contacts WHERE id = '$no'";
    $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);

    //test:
    // print_r($resultsMysqlObj);
    $resultsArray = mysqli_fetch_assoc($resultsMysqlObj);
    // echo "<hr />";
    //test:
    // print_r($resultsArray);

    //grazina rezultatus is DB:
    return $resultsArray;
  }

 $contactInfo = getContact(1);



//=============TESTAVIMAS=========================


  // $gydytojas1 = getDoctor(1);
  // $gydytojas2 = getDoctor(2);
  // $gydytojas3 = getDoctor(4);
  //
  // print_r($gydytojas1);
  // echo "<hr />";
  // print_r($gydytojas2);
  // echo "<hr />";
  // print_r($gydytojas3);
  // echo "<hr />";
  //
  //
//===============END OF TESTING=========================



//==================CREATE ============================

function createCustomer($name, $surname, $email, $phone, $comment,  $peopleNumber, $orderDate, $productID){

  $name = htmlspecialchars($name, ENT_QUOTES);  // apsauga nuo hackinimo uzkoduoja  : ' " < zenklus. NEPAMIRST NAUDOTI!!
  $surname = htmlspecialchars($surname, ENT_QUOTES);

  $mySQL = " INSERT INTO bookingform
                    VALUES (NULL, '$name', '$surname', '$email', '$phone', '$comment',  '$peopleNumber', '$orderDate', '$productID')
          ";
    $success = mysqli_query(getConnection(), $mySQL);

    if ($success == false && DEBUG_MODE > 0){
  echo "ERROR: Booking failed <br />";
  }
};


// createCustomer('John', "Smith", "john@smith.org", "4693563963", "lorem lorem lorem", 5, "2020-03-17", 153);
// createCustomer('Will', "Smith", "john@smith.org", "4693563963", "lorem lorem lorem", 5, "2020-03-17", 153);
// createCustomer('Martin', "Smith", "john@smith.org", "4693563963", "lorem lorem lorem", 5, "2020-03-17", 153);






// =====================DELETE doctor =================================
// $nr = yra konkretus ID is duomenu bazes


function deleteDoctor($nr){

  $nr = htmlspecialchars($nr, ENT_QUOTES); //apsauga


  $manoSQL = "DELETE FROM bookingform
                      WHERE id = '$nr'
                      LIMIT 1
  ";
  $arPavyko= mysqli_query(getConnection(), $manoSQL);

  if ($arPavyko == false && DEBUG_MODE > 0){
    echo "ERROR : nepavyko istrinti gydytojo <br />";


  }

};


deleteDoctor('3');

//============================= UPDATE DOCTOR ===================================

// $nr = yra konkretus ID is duomenu bazes

function updateDoctor($nr, $vardas, $pavarde){

  $vardas = htmlspecialchars($vardas, ENT_QUOTES);  // apsauga nuo hackinimo uzkoduoja  : ' " < zenklus. NEPAMIRST NAUDOTI!!
  $pavarde = htmlspecialchars($pavarde, ENT_QUOTES);
  $nr =  htmlspecialchars($nr, ENT_QUOTES);

  $manoSQL = " UPDATE doctors
                  SET name ='$vardas',
                      lname = '$pavarde'
                  WHERE id = '$nr'
                  LIMIT 1

            ";
  $arPavyko= mysqli_query(getConnection(), $manoSQL);

  if ($arPavyko == false && DEBUG_MODE > 0){
    echo "ERROR : nepavyko atnaujinti  gydytojo duomenu <br />";

  }
};


// updateDoctor(2, "Will", "Smith");

// ==========================================================================





//==========================SELECTING ALL DOCTORS: ==========================

function getContacts($no = 9999999){

  $mySQL = "SELECT * FROM contacts LIMIT $no ";
  $resultsMysqlObj = mysqli_query(getConnection(), $mySQL);

 //return grazins MysqlObj objecta
  return $resultsMysqlObj;
}

//TESTAVIMAS:

$allContacts = getContacts();
// print_r($allContacts);

//========================================================================




//==================VISU GYDYTOJU ISVEDIMAS PER WHILE CIKLA ==================

// $gyd = mysqli_fetch_assoc($visiGydytojai);  // is visu gydytoju paimamas pirmas
//
// while ($gyd) {
//  echo $gyd['name']. "<br /> ";
//
//  // is visu paimame sekanti gydytoja:
//  //(BUTINA NAUDOT KAD NEPALEIST NESIBAIGIANCIO CIKLO!!!)
//  $gyd = mysqli_fetch_assoc($visiGydytojai);
//
// }



//ARBA
//paaiskinimas: kol isvedamas sekantis gydytojas, tol veikia while ciklas ir isvedami duomenys:

// while ($gyd = mysqli_fetch_assoc($visiGydytojai)) {
//
//   // ISVEDIMAS:
//
//  echo $gyd['name'] . " " . $gyd['lname'] . "<br /> ";
//  //ARBA
//  echo "$gyd[name] $gyd[lname] <br />";
//  //ARBA
//  echo "{$gyd['name']} {$gyd['lname']} <br />";
// }
