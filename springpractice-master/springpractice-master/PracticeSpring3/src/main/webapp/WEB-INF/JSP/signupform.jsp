<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*
{
    padding: 0px;
    margin: 0px;
}
 body
 {
 	background-color: #000000;
 }

 .navbarform{
 	position:fixed;
 	width: 100%;
 	height:40px;
 	background-color: #880000;
 	top:0%;
 }
 .formbox
 {
    background-color: #880000;
    width: 510px;
    height: 350px;
    margin-top: 10%;
    margin-left: 27%;
    align-items: center;
    border-radius: 10px;
    position: relative;
 }


 .input1,input[type="password"]
 {
    margin-top: 20px;
    margin-left: 7%;
    width: 200px;
    height: 25px;
    outline: none;
    border:none;
    border-bottom: 2px solid black;
    background: transparent;
    color: white;
    

 }

 button
 {
    width: 150px;
    height: 35px;
    border-radius: 10px;
    background-color: black;
    color: white;
 }
  input[type="text"],button,input[type="password"]
  {
  	position:relative;
  }

  form
  {
   position: absolute;
   width:inherit;
   height: 90%;
  	display:inline-grid;
  	grid-template-columns: 255px 255px; 
  	grid-template-rows: 70% 30%
  }
  .submitbutton
  {
     grid-column:1/3;
     display: flex;
     justify-content: center;
     align-items: center;
  }
  ::placeholder {
  color: white;
  opacity: 1; /* Firefox */
}

</style>
</head>
<body>
<div class="navbarform">
</div>
<div class="formbox">
   <h1 style="text-align: center;">Register</h1>
   <p id="msg1" style="visibility: hidden;color: yellow;"></p>
	<form onsubmit="return validate()",action="signup">
	 <div>
      <input type="text" name="firstname"  id="input1" placeholder="First Name" class="input1" required><br>
      <input type="text" name="userid" id="input3"  placeholder="User ID"class="input1" required>
      <input type="Password" name="psw2" id="input5" placeholder="Password" required><br>
      <input type="date" name="birthday" id="input7" class="input1">
     </div>
     <div>
         <input type="text" name="lastname"  id="input2" placeholder="Last Name" class="input1" required><br>
         <input type="text" name="email"  id="input4" placeholder="Email" class="input1" required><br>
         <input type="number" name="age"  id="input6" placeholder="Age" class="input1" required><br>
     </div>
     <div class="submitbutton">
      <button type="submit">Sign Up</button>
     </div>
   </form>
</div>
<script>
        var d=document.getElementsByName("birthday");
        var g=document.getElementsByName("email");
        var h=document.getElementsByName("age");
     function validate()
     {

        var flag=true;

        //logic 
        if (emailValidation() && ageValidation() && dateValidation()) 
        {
         document.getElementById("msg1").style.visibility="hidden";
         flag=true;
        }
        else{
         document.getElementById("msg1").style.visibility="visible";
         flag=false;
        }
   

        //return value
        return flag;
     }
     function emailValidation()
     {
        var flag=true;
      if(g[0].value.includes("@")!==true | g[0].value.includes(".")!==true)
        {
           g[0].style.borderStyle="solid";
           g[0].style.borderColor="yellow";
           document.getElementById("msg1").innerHTML="Email should contain @ and .";
           flag=false;
        }
        else{
         g[0].style.border="none";
         g[0].style.borderBottom="solid ";
         g[0].style.borderColor="black";
         g[0].style.borderBottomWidth="2px"; 
        }
        return flag;
     }
     function ageValidation()
     {
      var flag=true;
      if(h[0].value<=0)
        {
         h[0].style.borderStyle="solid";
         h[0].style.borderColor="yellow";
         document.getElementById("msg1").innerHTML="Age should be greater than 0";
         flag=false;
        }
        else{
         h[0].style.border="none";
         h[0].style.borderBottom="solid ";
         h[0].style.borderColor="black";
         h[0].style.borderBottomWidth="2px";  
        }
        return flag;
     }
     function dateValidation()
     {
      var bd=d[0].value;
        flag=true;
      if (bd == null || bd == "") {
         d[0].style.borderStyle="solid";
         d[0].style.borderColor="yellow";
         document.getElementById("msg1").innerHTML="Invalid date of birth";
         flag=false;
        }
        else{
         d[0].style.border="none";
         d[0].style.borderBottom="solid";
         d[0].style.borderColor="black";
         d[0].style.borderBottomWidth="2px";  
        }
        return flag;
     }
</script>
</body>
</html>