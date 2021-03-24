<?php # Script 18.5 - peoducts.php
// This is the product page for the site.
// Include the configuration file:
require('includes/config.inc.php');
require('../mysqli_connect.php');
// Set the page title and include the HTML header:
$page_title = 'Welcome to RazmAra Carpet Site!';
include('header.html');

// Welcome the user (by name if they are logged in):

if (isset($_SESSION['uid'])) {
  $sql="SELECT first_name from users WHERE user_id=:uid";
  $statement=$dbc->prepare($sql);
  $statement->bindParam(':uid',$_SESSION['uid']);
  $statement->execute();
  $record=$statement->fetch();
  echo '<h4>Welcome';
  echo ", {$record['first_name']}";
  echo '!</h4>';
}
//
$q = "SELECT p.name, p.price, p.size, p.photo, c.name FROM products AS p INNER JOIN category AS c ON p.category_id=c.category_id";
$r = $dbc->query($q);
// or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
$num =$r->rowCount();
if($num > 0){
  echo '<div class="row carpets" id="carpets">';

  while ($row=$r->fetch()){
  /*  
 echo'$row["name"]';
 printf("%s (%s)\n", $row["size"], $row["discription"]);
 */
echo ' 


      <div class="col-md-3 carpet ">
         <img src=" '. $row["photo"].' " class="image">
          Category:'. $row["name"].' </br> 
          £'. $row["price"].'</br>
          '. $row["size"].' 
         <div class="middle">
             <a class="text" href="./carpet.php?id=1" role="button">Tbriz Carpets</a>
         </div>
      </div>
    '; 
  }
  echo '</div>';
}
 
?>

<?php

include('footer.html');
?>