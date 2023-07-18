<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Place Details
</title>


  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

      <link rel="stylesheet" href="placedetails.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



</head>






<body>

<section id="header" >
<a href="home.jsp" style="text-decoration:none"><h2>Tripo</h2></a>
<i class="fa-solid fa-bars menu"></i>

<div >
    <ul id="nav">
        <li><a class="active" href="home.jsp">Home</a> </li>
       
        <li><a href="likedplace.jsp">Places</a></li>
        <li><a href="pagedetails.jsp" class="blog">Blog</a></li>
        <li><a href="home.jsp#footer">About</a></li>
    

    </ul>
</div>

</section>


<div class="pdes" class="section-p1">





<img src="" alt=""/>








<div class="data">
<h1></h1>
<i class="fa-regular fa-heart fa-2xl"></i>
<p></p>

</div>



 
</div>




<script>


var contentContainer = document.querySelector(".pdes");

		 


	var placename = '<%= request.getParameter("placename") %>';
	console.log(placename);


var content='';
 
fetch("SinglePlaceData?placename="+placename)
.then(response => response.json())
.then(data => {
		  
		  
	
		var placename= data.name;
		
		
		var placedescription= data.description;
		var placeimage= data.imageurl;
		
			
	
		
		content +=' <img src='+placeimage+' alt="" /> ';
		
	
	
        content +='   <div class="data">';
        content +=' <h1>'+placename+'</h1> ';
    	content+='<i class="fa-regular fa-heart fa-2xl like-btn"></i>';
        content +='   <p>'+placedescription+'</p>';
        content +='</div>';
		
        
		
        var contentContainer = document.querySelector(".pdes");
        contentContainer.innerHTML = content;
        
        var likeBtn = document.querySelector(".like-btn");
        likeBtn.addEventListener("click", function() {
          sendPlaceData(placename, placeimage, placedescription);
        });
	    
	  })
	  
	  .catch(error => {
	    // Handle any errors
	    console.error('Error:', error);
	  });
	  
	  
function sendPlaceData(name, image, description) {


	  // Create an AJAX request
	  var xhr = new XMLHttpRequest();

	  // Define the destination URL
	  var destinationURL = 'storelikedplace.jsp';

	  // Prepare the data to be sent
	  var params = 'placename=' + encodeURIComponent(name) +
	               '&placeimage=' + encodeURIComponent(image) +
	               '&placedescription=' + encodeURIComponent(description);

	  // Set up the AJAX request
	  xhr.open('POST', destinationURL, true);
	  xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

	  xhr.onreadystatechange = function() {
	    if (xhr.readyState === 4) {
	      if (xhr.status === 200) {
	        // Request was successful
	        alert('Place Added to Liked Place');
	        // You can perform further actions or handle the response here
	      } else {
	        // Request failed
	        alert('Error occurred');
	        // You can handle the error case here
	      }
	    }
	  };

	  // Send the AJAX request with the data
	  xhr.send(params);
	}


        
	
        
      
    
       
        
        
        
        

</script>



</body>
</html>