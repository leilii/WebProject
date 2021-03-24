<?php

$page_title = 'Welcome to this Site!';

require('includes/config.inc.php');
require('../mysqli_connect.php');
include('header.html');
if (isset($_SESSION['uid'])) {
    echo '<h4>Welcome Admin';
    echo ", {$_SESSION['first_name']}";
    echo '!</h4>';
  }



$sql = "SELECT u.user_id u.first_name , u.last_name, u.email, u.address, u.role_id, r.name  FROM users As u INNER JOIN  roles AS r ON u.role_id=r.role_id";
   
 //$sql = "SELECT * FROM users";
 $statment = $dbc->prepare($sql);
 $statment->execute();
 $num =$statment->rowCount();
 if($num > 0){
   
 
   while ($row=$statment->fetch()){

    echo '<div class="row " id="users">
 <div>
     <button onclick="delete_user('.$row["first_name"].')">Delete</button><button onclick="update_user('.$row["first_name"].')">Edit</button>  User Name: '.$row["first_name"].' User Email: '.$row["email"].'User Role: '.$row["name"].' User role Id: '.$row["role_id"].' 

 </div>
 <br>
 '; 
}

echo '</div>';
}
else{
    echo '<h2>There is no user</h2>';
}


//function delete_user($uid){

//};

//function update_user($uid,$data){

//};
//function create_user($data){};



include('footer.html');
?>
