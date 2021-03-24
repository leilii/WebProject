


function validate(event) {
    event.preventDefault();
    var password =document.getElementById("password").value;
    var email = document.getElementById("email").value;
    if (email.endsWith("com")) {
        
        submitData(email, password);
    } else {
        alert("Email must ends .com");
    }

}


function submitData(myemail, mypassword) {
     var data = new FormData();
    data.append("email", myemail);
    data.append("password", mypassword);
    data.append("action", "login");
   
  var xhttp = new XMLHttpRequest();
    xhttp.addEventListener("load", e => {
        //alert(e.target.status);
        if (e.target.status==200){
            window.location="dashboard.php";
        }else if (e.target.status==404){
            alert("incorect username and password!");
        }else {
            alert("Something is wrong!");
        }
        
    });
  //  console.log(data);
    xhttp.open("post", "login.php");
    xhttp.send(data);
   
    console.log(xhttp.responseText);
    
}
function user_list(){

}