<?php # Script 18.5 - peoducts.php
// This is the product page for the site.
// Include the configuration file:
require('includes/config.inc.php');
require('../mysqli_connect.php');
// Set the page title and include the HTML header:
$page_title = 'Welcome to RazmAra Carpet Site!';
include('header.html');

// Welcome the user (by name if they are logged in):

if (isset($_SESSION['first_name'])) {
  echo '<h4>Welcome';
  echo ", {$_SESSION['first_name']}";
  echo '!</h4>';
}
//
$q = "SELECT p.name, p.price, p.size, p.photo, c.name FROM products AS p INNER JOIN category AS c ON p.category_id=c.category_id WHERE p.category_id= 12 ";
$r = mysqli_query($dbc, $q) or trigger_error("Query: $q\n<br>MySQL Error: " . mysqli_error($dbc));
$num =mysqli_num_rows($r);
if($num > 0){
  while ($row=mysqli_fetch_array($r)){
  /*  
 echo'$row["name"]';
 printf("%s (%s)\n", $row["size"], $row["discription"]);
 */
echo ' 

<div class="carpets" id="carpets">
    <div class="row carpets">

      <div class="carpet col-md-3">
           <img src="'. $row["photo"].'" class="image">
          <div class="middle">
          <a class="text" href="tabrizcarpets.php?id=1" role="button">'. $row["name"].'</a>
          </div>
      </div>
            
    </div>
  </div>
 '; 
  }
}
  mysqli_free_result($r);

?>

<?php


include('footer.html');
?>