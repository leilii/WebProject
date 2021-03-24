<?php # Script 18.5 - peoducts.php
// This is the product page for the site.

// Include the configuration file:
require('includes/config.inc.php');

// Set the page title and include the HTML header:
$page_title = 'Welcome to this Site!';
include('header.html');

// Welcome the user (by name if they are logged in):

if (isset($_SESSION['first_name'])) {
  echo '<h4>Welcome';
  echo ", {$_SESSION['first_name']}";
  echo '!</h4>';
}

?>

<div class="carpets" id="carpets">
    <div class="row">

      <div class="carpet col-xs-12 col-s-6 col-md-3">
           <img src="images/Tabriz_Hunting_Carpet.jpg" class="image">
          <div class="middle">
          <a class="capture" href="tabrizcarpets.php?id=1" role="button">Tbriz Carpets</a>
          </div>
      </div>
      <div class="carpet col-xs-12 col-s-6 col-md-3">
        <img src="images/Isfahan.jpg" class="image">
        <div class="middle">
          <a class="capture" href="./carpet.php?id=2" role="button">Isfahan Carpets</a>
        </div>
      </div>
      <div class="carpet col-xs-12 col-s-6 col-md-3">
           <img src="images/Kashan.jpg" class="image">
          <div class="middle">
          <a class="capture" href="./carpet.php?id=1" role="button">Kashan Carpets</a>
        </div>
      </div>
      <div class="carpet col-xs-12 col-s-6 col-md-3">
          <img src="images/kerman.jpg" class="image">
          <div class="middle">
            <a class="capture" href="./carpet.php?id=2" role="button">Kerman Carpets</a>
          </div>
      </div>            
      <div class="carpet col-xs-12 col-s-6 col-md-3">
           <img src="images/Qom.jpg" class="image">
          <div class="middle">
             <a class="capture" href="./carpet.php?id=1" role="button">Qom Carpets</a>
          </div>
      </div>
      <div class="carpet col-xs-12 col-s-6 col-md-3">
        <img src="images/Tablo.jpg" class="image">
        <div class="middle">
          <a class="capture" href="tablocarpets.php" role="button">Paints and picturs Carpets</a>
        </div>
      </div>
      <div class="carpet col-xs-12 col-s-6 col-md-3">
        <img src="images/Round.jpg" class="image">
        <div class="middle">
          <a class="capture" href="./carpet.php?id=2" role="button">Round Carpets</a>
        </div>
      </div>
      <div class="carpet col-xs-12 col-s-6 col-md-3">
        <img src="images/3DCarpets.jpg" class="image">
        <div class="middle">
          <a class="capture" href="./carpet.php?id=2" role="button">3D Carpets</a>
        </div>
      </div>
     
      
    </div>
  </div>
<?php
include('footer.html');
?>