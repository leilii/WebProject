  
<?php # Script 18.4 - mysqli_connect.php
// This file contains the database access information.
// This file also establishes a connection to MySQL
// and selects the database.

// Set the database access information as constants:
define('DB_USER', 'lnajafi');
define('DB_PASSWORD', 'Dooyei1A');
define('DB_HOST', 'localhost');
define('DB_NAME', 'lnajafi');

// Make the connection:
//$conn = new PDO("mysql:host=localhost;dbname=lnajafi;", "lnajafi","Dooyei1A");
//$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$dbc = new PDO ("mysql:host=".DB_HOST.";dbname=".DB_NAME.";", DB_USER, DB_PASSWORD);

// If no connection could be made, trigger an error:
// if (!$dbc) {
// 	trigger_error('Could not connect to MySQL: ' . mysqli_connect_error() );
// } else { // Otherwise, set the encoding:
// 	mysqli_set_charset($dbc, 'utf8');
// }