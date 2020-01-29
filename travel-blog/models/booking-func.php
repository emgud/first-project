<?php

require_once('connection-function.php');


function createBooking( $trip, $hikeDate, $price, $name, $surname, $email, $phone, $people, $comment){
  $name =   htmlspecialchars($name, ENT_QUOTES );
  $surname = htmlspecialchars($surname, ENT_QUOTES );

  $mySQL = " INSERT INTO bookings
                    VALUES (NULL, '$trip', '$hikeDate', '$price', '$name', '$surname', '$email', '$phone', '$people', '$comment')
          ";
    $success = mysqli_query(getConnection(), $mySQL);

    if ($success == false && DEBUG_MODE > 0){
  echo "ERROR: message was not sent <br />";
  }
};
