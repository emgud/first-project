<?php

require_once('connection-function.php');


function createMessage($name, $email, $message){

  $mySQL = " INSERT INTO messages
                    VALUES (NULL, '$name', '$email', '$message')
          ";
    $success = mysqli_query(getConnection(), $mySQL);

    if ($success == false && DEBUG_MODE > 0){
  echo "ERROR: message was not sent <br />";
  }
};
