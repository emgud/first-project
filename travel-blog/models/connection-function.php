<?php

  // php konstantos:

  define("DB_NAME", 'earthlings');
  define("DB_HOST", 'localhost');
  define("DB_USER", 'root');
  define("DB_PASS", 'root');
  // papildomas, bet neprivalomas patikrinimas ar veikia prisijungimas prie DB:
  define("DEBUG_MODE", '1'); //0 - isjungta, 1- rodo pagrindinius, 2- rodo visus



  // mysqli_connect($host, $user, $password, $database, $port  (jeigu 3306 nereikia nurodyt), $socket)
  // mysqli_connect(DB_TIPAS, MYSQL_USER_VARDAS, MYSQL_USER_PASS, DB_PAVADINIMAS);




//====================PRISIJUNGIMAS PRIE DB: ==========================

// susikurt kintamaji, kuris laiko prisijungimo prie serverio info
$connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

//=======================================================================




//========================== LT kalbos ijungimas=========================


mysqli_set_charset($connection, "UTF8"); // UTF8 be jokio bruksnio

//=======================================================================


// patikrint ar prisijunge prie serverio sekmingai
// GET f-jos reiskia kad jos turi kazka grazint


function getConnection(){

  //prieijimas prie globalio kintamojo $prisijungimas:
    global $connection ;

  if($connection != true){

    if(DEBUG_MODE > 0){
    echo "ERROR : pisijungti prie DB nepavyko <br />";
    // kad rodytu error zinute, kodel nepavyko prisijungti:
    echo mysqli_connect_error($connection);
  }
    return NULL;
  } else{
    if(DEBUG_MODE > 1){
    echo "ERROR : pisijungti prie DB nepavyko <br />";
    // kad rodytu error zinute, kodel nepavyko prisijungti:
    echo mysqli_connect_error($connection);
  }
    // sekmes atveju: grazinti $prisijungima, kad veiktu:
    // echo "prisijungti pavyko";
    return $connection;
  }
}
// getConnection();






// kad butu galima dirbti su DB duomenimis:
  // $x = mysqli_query($prisijungimas);


  //Turi return- kuris grazina array.
