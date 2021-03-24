<?php # Script 18.8 - login.php
// This is the login page for the site.
require('includes/config.inc.php');
require_once('../mysqli_connect.php');
//require_once("request.php");
$page_title = 'Login';

print_r($_POST);
$email = $_POST["email"];
$password = $_POST["password"];
//$sql = "SELECT user_id FROM users WHERE email='$email' AND password='$password'";
$sql = "SELECT * FROM users WHERE email=:email AND password=:password";
$statement = $dbc->prepare($sql);
$statement->bindParam(':email', $email);
$statement->bindParam(':password', $password);
$statement->execute();
$record = $statement->fetch();
if ($record) {

	session_start();
	$_SESSION["uid"] = $record["user_id"];
	if (!isset($_SESSION["uid"])) {
		header("HTTP/1.1 500 Internal Server Error");
		die();

	}
	header("HTTP/1.1 200 OK");

}
else {
	//header("HTTP/1.1 404 Not Found");
	exit;
}

?>

