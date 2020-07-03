<!DOCTYPE html>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<meta charset="UTF-8">
<meta name ="viewport" content ="width=device-width, initial-scale=1.0">
<title>Home</title>
<link href="${pageContext.request.contextPath}/index.css" rel="stylesheet"/>

</head>
<body >

<div class ="navBar"> 

 <a class="navItem" href ="/" > HOME</a> 
<a class="navItem" href = "/user/login/page"   > LOGIN </a>  
<a class="navItem" href = "/user/signup/page" > SIGN UP </a>  

</div> 


<div class = "flexContainer">
<div class = "flexItem">

 <h1 > INFINITY BANK</h1>

 <p > Infinity Bank is a bank where you can deposit as much as you want. </p> 

</div>

<div id = "disclaimer" class = "flexItem"> 
<h4> Disclaimer</h4>

<p>This website is solely for learning purposes. It is not a real bank and bares no responsibility for data entered. 
Please do not enter real information. Thanks for visiting!

 </p></div>
 
 </div>

</body>
</html>