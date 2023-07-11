

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Random" %>

<% 

String placelist[]={
	"Bali",
	"Los Angeles",
	"Petra",
	"Great Pyramid of Giza",
	"Machu Picchu",
	"Colosseum",
	"Great Wall of China",
	"Chichén Itzá",
	"Christ the Redeemer",
	"New York",
	"Taj Mahal",
	"Las vegas",
	"Tamil Nadu",
	"Indore",
	"Mumbai",
	"Sydney",
	"Dubai",
	"London",
	"Paris",
	"Cape Town",
	"Kutch",
	"Somnath",
	"Gir National Park",
	"Hong KOng",
	"Mexico",
	"istanbul",
	"Maldives",
	"Petra",
	"Seoul",
	"Tokyo",
	"Rome",
	"Toronto",
	"San Francisco",
	"Jamaica",
	"Portland",
	"Calabria",
	"Kigali",
	"Istanbul",
	"Bali",
	"Devon",
	"Bogota",
	"Miami",
	"Detroit",
	"Portree",
	"Statue Of Unity",
	"Vadodara",
	"Saputara",
	"Dwarka",
	"Junagadh",
	"Champaner",
	"Gandhi Ashram","Sabarmati Ashram",
	"Goa",
	"Agra",
	"Rajasthan",
	"Delhi",
	"Munnar",
	"Manali",
	"Ooty",
	"Shimla",
	"Sikkim",
	"Kolkata",
	"Kerala",
	"Shillong",
	"Lonavala",
	"Kedarnath",
	"Hawa Mahal",
	"Amber Palace",
	"Rajkot",
	"Kashmir",
	"Coorg",
	"Jaipur",
	"Leh",
	"Ladakh",
	"Varanasi",
	"Jaisalmer",
	"Tawang",
	"Rishikesh",
	"Madurai",
	"Sri Lanka",
	"Mathura",
		
		
		
		
		
		
};

%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tripo</title>
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

   


</head>







<section id="header" >
<a href="home.jsp" style="text-decoration:none"><h2>Tripo</h2></a>
<i class="fa-solid fa-bars menu"></i>

<div >
    <ul id="nav" >
        <li><a class="active" href="home.jsp">Home</a> </li>
       
        <li><a href="#product">Places</a></li>
        
   

        
        <li><a href="pagedetails.jsp?placename=Goa">Blog</a></li>
        <li><a href="#footer" class="blog">About</a></li>
        
        <% 
       
        if (session.getAttribute("loggedInUser") != null) {
        %>
        <li><a href="NewFile1.jsp" ><i class="fa-solid fa-user"></i></a></li>
        <%}else{ %>
        
       <li><a href="NewFile1.jsp" ><i class="fa-solid fa-right-to-bracket"></i></a></li>
       <% }%>

    </ul>
</div>

</section>



<section id="hero" class="section-p1">

  
        <h4> Go-explore-discover</h4>
        <h2>Find your own path..</h2>
        <h1>Discover the unknown.</h1>
        <p>Travel light, live light, spread the light, be the light</p>
        <a href="#product"><button class="shopnow">Explore</button></a>

   


    </section>


<!-- <section id="feature" class="section-p1">
    
    <div class="fa1">
        <img src="img/features/f1.png" alt="">
        <h6>Free Shipping</h6>
    </div>
    <div class="fa1">
        <img src="img/features/f2.png" alt="">
        <h6>Online Order</h6>
    </div>
    <div class="fa1">
        <img src="img/features/f3.png" alt="">
        <h6>Save Money</h6>
    </div>
    <div class="fa1">
        <img src="img/features/f4.png" alt="">
        <h6>Promotions</h6>
    </div>
    <div class="fa1">
        <img src="img/features/f5.png" alt="">
        <h6>Happy Sell</h6>
    </div>
    <div class="fa1">
        <img src="img/features/f6.png" alt="">
        <h6>F24/7 Support</h6>
    </div>
   



</section>
 -->




<section id="product" class="section-p1" >



    <h2>Featured Places</h2>
    <p>The journey not the arrival matters.</p>




<div class="formcontainer">
<div class="form">
    <input type="text" class="email" id="placesearch" placeholder="Seach a place...">
    <button class="normal" id="search">Search</button>
</div>
</div>

<div class="loader-container">
<div id="loader" class="loader"></div>
</div>


<div class="products">




<div id="pro1">
<img src="https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif?20151024034921" alt="">
<div class="des">
<span>place</span>
<h5>Loading...</h5>
<div class="star">
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
</div>

</div>



 
</div>

</div>










</section>







<section id="banner2" class="section-p1">

    <div class="banner-section">
  
        
   <button id="learnmore1">Learn More</button>

    </div>

    <div class="banner-box2">
      
   <button id="learnmore2">Learn More</button>

    </div>
    
    <script>
    
    const button1 = document.querySelector('#banner2 #learnmore1');

 // Bind a click event to the button
 button1.addEventListener('click', function() {
   // Redirect to another page
   window.location.href = 'pagedetails.jsp?placename=Bangkok';
 });
 
 const button2 = document.querySelector('#banner2 #learnmore2');

 // Bind a click event to the button
 button2.addEventListener('click', function() {
   // Redirect to another page
   window.location.href = 'pagedetails.jsp?placename=Dubai';
 });
 
 
    
    </script>
    

</section>

<section id="banner3" class="section-p1">
    <div class="banner-section " id="learnmore1">
        
       
       


    </div>
    <div class="banner-section banner-box2"  id="learnmore2">
        
      


    </div>
    <div class="banner-section banner-box3"  id="learnmore3">
        
       


    </div>



</section>



 
<section id="newsletter" class="section-p1 section-m1 " >

<div class="des">
    <h4>Sign Up For Tripo...</h3>
    <p>Get E-mail updates about best and latest <span>traveling place</span></p>

</div>
<div class="form">
    <input type="text" class="email" placeholder="Your Email Address">
    <button class="normal">SignUp</button>
</div>

</section>

<footer class="section-p1" id="footer">

   
    <div class="footer1" >
        <a href="home.jsp" style="text-decoration:none"><h2>Tripo</h2></a>
        <h4>Contact</h4>
        <p><strong>Address</strong>L.D College of Engineering, Ahmedabad</p>
        <p><strong>Phone</strong>(+91)8241043443/+01 22222 365</p>
        

        <h4>Follow Us</h4>
        <div class="social">
            <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-twitter"></i>
            <i class="fa-brands fa-instagram"></i>
            <i class="fa-brands fa-linkedin"></i>
            <i class="fa-brands fa-youtube"></i>

        </div>
       
       
    </div>
    
    <div class="footer2">
       
        <h4>About</h4>
       <p><a href="#">About Us</a></p>
      
       <p><a href="#">Privacy Policy</a></p>
       <p><a href="#">Terms & Condition</a></p>
       <p><a href="#">Contact Us</a></p>
    </div>

    <div class="footer3">
       
        <h4>My Account</h4>
       <p><a href="#">Sign In</a></p>
       <p><a href="#product">Explore</a></p>
       <p><a href="#">Your Place</a></p>
      
       <p><a href="#">Help</a></p>
    </div>

    <div class="footer4">
        <h4>Install App</h4>
        <p>From App Store or Google Play</p>

        <div>
            <img src="img/pay/app.jpg" alt="">
            <img src="img/pay/play.jpg" alt="">
        </div>
       

    </div>


    <div class="copyright">
        <p>© 2023 AkjaySotware- Tripo all rights reserved.</p>
    </div>
    

   


</footer>


<script>
    
    const button11 = document.querySelector('#banner3 #learnmore1');

 // Bind a click event to the button
 button11.addEventListener('click', function() {
   // Redirect to another page
   window.location.href = 'pagedetails.jsp?placename=Sun Temple, Modhera';
 });
 
 const button22 = document.querySelector('#banner3 #learnmore2');

 // Bind a click event to the button
 button22.addEventListener('click', function() {
   // Redirect to another page
   window.location.href = 'pagedetails.jsp?placename=Bhubaneswar';
 });
 
 
 const button33 = document.querySelector('#banner3 #learnmore3');

 // Bind a click event to the button
 button33.addEventListener('click', function() {
   // Redirect to another page
   window.location.href = 'pagedetails.jsp?placename=Taj Mahal';
 });
 
 
    </script>


<script>
var search=document.getElementById("search");
var place=document.getElementById("placesearch");
var contentContainer = document.querySelector("#product .products");
var progressBar = document.getElementById("loader");

	  search.addEventListener('click', function() {
		  
		  
var placename=place.value;
progressBar.style.display = "block";
		 
  // Make an AJAX request to the server
  fetch("./GetPlaceData?placename="+placename)
    .then(response => response.json())
    .then(data => {

    	
      // Access the resultCode from the response data
     progressBar.style.display = "none";

      // Use the resultCode as needed
    
      // Access the placeList from the response data
      var placeList = data.places;
      console.log(placeList);

		var content='';
		
		   if(placeList.length==0)
	        	content="<h3>Place name incorrect...</h3>";
		   
		   else{
			
			
      // Iterate over the placeList and do something with each place
      placeList.forEach(place => {
    	  
    	  
        // Access place properties like name, description, imageUrl
        var name = place.name;
        var description = place.description;
        var imageUrl = place.imageurl;
        if(imageUrl=="")
        	{
        	imageUrl='img/earth.png';
        	}
        
        var imageElement = '<img src="' + imageUrl + '" alt="">';

     // Insert the image element into the existing content
  
		
        
        
        content +='  <div id="pro1"> ';
        content += imageElement;
        content +='   <div class="des">';
        content +='  <span>place</span> ';
        content +='   <h5>'+name+'</h5> ';
        content +=' <div class="star">  ';
        content +='  <i class="fas fa-star"></i> ';
        content +='   <i class="fas fa-star"></i>';
        content +='  <i class="fas fa-star"></i> ';
        content +=' <i class="fas fa-star"></i>  ';
        
        content +='   </div>';
    	 
        content +='</div>  ';
       
      	content+='</div>';
       
        
        
        
        


        
        
      });
		      }

		      var contentContainer = document.querySelector("#product .products");
		      contentContainer.innerHTML = content;

		      var pro1Elements = document.querySelectorAll('#pro1');
		      pro1Elements.forEach(pro1 => {
		        pro1.addEventListener('click', function() {
		          var placeName = this.querySelector('h5').textContent;
		          var url = 'pagedetails.jsp?placename=' + placeName;
		          window.location.href = url;
		        });
		      });
		    })
    .catch(error => {
    	  progressBar.style.display = "none";
      // Handle error
      console.error('Error:', error);
    });
});
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  

</script>


<script>





<%
Random random = new Random();



int randomIndex = random.nextInt(placelist.length);

String randomElement = placelist[randomIndex];


%>


var placename='<%=randomElement%>';
		 
  // Make an AJAX request to the server
  fetch("./GetPlaceData?placename="+placename)
    .then(response => response.json())
    .then(data => {

    	
      // Access the resultCode from the response data
    

      // Use the resultCode as needed
    
      // Access the placeList from the response data
      var placeList = data.places;
      console.log(placeList);

		var content='';
		
		   if(placeList.length==0)
	        	content="<h3>Place name incorrect...</h3>";
		   
		   else{
			
			
      // Iterate over the placeList and do something with each place
      placeList.forEach(place => {
    	  
    	  
        // Access place properties like name, description, imageUrl
        var name = place.name;
        var description = place.description;
        var imageUrl = place.imageurl;
        if(imageUrl=="")
        	{
        	imageUrl='img/earth.png';
        	}
        
        var imageElement = '<img src="' + imageUrl + '" alt="">';

     // Insert the image element into the existing content
  
		
        
        
        content +='  <div id="pro1"> ';
        content += imageElement;
        content +='   <div class="des">';
        content +='  <span>place</span> ';
        content +='   <h5>'+name+'</h5> ';
        content +=' <div class="star">  ';
        content +='  <i class="fas fa-star"></i> ';
        content +='   <i class="fas fa-star"></i>';
        content +='  <i class="fas fa-star"></i> ';
        content +=' <i class="fas fa-star"></i>  ';
        
        content +='   </div>';
    	 
        content +='</div>  ';
       
      	content+='</div>';
       
        
        
        
        


        
        
      });
		      }

		      var contentContainer = document.querySelector("#product .products");
		      contentContainer.innerHTML = content;

		      var pro1Elements = document.querySelectorAll('#pro1');
		      pro1Elements.forEach(pro1 => {
		        pro1.addEventListener('click', function() {
		          var placeName = this.querySelector('h5').textContent;
		          var url = 'pagedetails.jsp?placename=' + placeName;
		          window.location.href = url;
		        });
		      });
		    })
    .catch(error => {
    	  progressBar.style.display = "none";
      // Handle error
      console.error('Error:', error);
    });





</script>




    <script src="script.js"> </script>   
</body>

</html> 