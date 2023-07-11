<%


if (session.getAttribute("loggedInUser") != null) {
    // User is already logged in, redirect to a different page
    response.sendRedirect("home.jsp");
}
else{
%>


<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
     <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            
        }
        
        h1 {
            text-align: center;
        }
        
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f2f2f2;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
        }
        
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<section id="header" >
<a href="home.jsp" style="text-decoration:none"><h2>Tripo</h2></a>
<i class="fa-solid fa-bars menu"></i>

<div >
    <ul id="nav" >
        <li><a class="active" href="home.html">Home</a> </li>
       
        <li><a href="#product">Places</a></li>
        
   

        
        <li><a href="pagedetails.jsp?placename=Goa">Blog</a></li>
        <li><a href="#footer" class="blog">About</a></li>
       <li><a href="NewFile1.jsp" ><i class="fa-solid fa-right-to-bracket"></i></a></li>

    </ul>
</div>

</section>

 

    <h1>Direct Login </h1>
    <form action="./logindb.jsp" method="post">
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required>
        
        <input type="submit" value="Login">
    </form>
    
   
    
</body>
</html>

<% } %>





