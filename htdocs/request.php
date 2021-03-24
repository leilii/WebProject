<?php if($_REQUEST["SERVER_METHOD"] == "post"){
    $data=$_POST;
}
else{
    $data =$_GET;
}
$action =$data["action"];

?>