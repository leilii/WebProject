<?php # Script 18.5 - dashboard.php
// This is the main page for the site.
if (!isset($_SESSION['uid'])){
    header('Location:login.php');
}

// Include the configuration file:
require('includes/config.inc.php');
require('../mysqli_connect.php');
include('header.html');
// Set the page title and include the HTML header:
$page_title = 'Welcome to Your Dashboard!';
//include('includes/header.html');

// Welcome the user (by name if they are logged in):
echo '<h1>Welcome';
if (isset($_SESSION['uid'])){
echo " {$_SESSION['uid']}";}
echo '!</h1>';
?>
<p>
	
</p>
<p>This is dashboard   This is dashboard   This is dashboard   This is dashboard   This is dashboard   This is dashboard  
This is dashboard   This is dashboard   This is dashboard   This is dashboard   This is dashboard   This is dashboard  
This is dashboard   This is dashboard   This is dashboard   This is dashboard   This is dashboard   This is dashboard  
This is dashboard   This is dashboard   This is dashboard   This is dashboard   This is dashboard   This is dashboard  .</p>

<?php 
include('includes/dashboardMenu.html');
include('footer.html');
?>