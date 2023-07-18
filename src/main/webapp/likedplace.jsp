<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Retrieve Places Data</title>
    <style>
       
        
            
    
.grid-containeres{
	
	

	display:flex;
	justify-content:space-beetween;

	
	
	
	
}

.grid-item
{


border:1px solid var(--secondary);
	border-radius:40px;
	display:flex;
	justify-content:space-between;
margin:10px;
align-items:start;
	
	
}



.grid-item img{


	border:1px solid var(--secondary);
	border-radius:20px;
	
	margin:25px;
padding:10px;
	
	

}


.grid-item .data
{
margin:25px;
padding:10px;
}



        
    </style>
     <link rel="stylesheet" href="style.css" />
</head>
<body>


<section id="header" >
<a href="home.jsp" style="text-decoration:none"><h2>Tripo</h2></a>
<i class="fa-solid fa-bars menu"></i>

<div >
    <ul id="nav" >
        <li><a class="active" href="home.jsp">Home</a> </li>
       
        <li><a href="likedplace.jsp">Places</a></li>
        
   

        
        <li><a href="pagedetails.jsp?placename=Goa">Blog</a></li>
        <li><a href="#footer" class="blog">About</a></li>
       <li><a href="NewFile1.jsp" ><i class="fa-solid fa-right-to-bracket"></i></a></li>

    </ul>
</div>

</section>




    <div class="grid-container">
        <% 
        // Define database connection variables
        String jdbcUrl = "jdbc:mysql://localhost:3306/akshay";
        String username = "root";
        String password = "root";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            // Establish database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl, username, password);

            // Create SQL statement to retrieve data from places table
            String sql = "SELECT * FROM places";
            statement = connection.createStatement();

            // Execute the query and retrieve the result set
            resultSet = statement.executeQuery(sql);

            // Process the result set and display data in grid items
            while (resultSet.next()) {
                String placename = resultSet.getString("placename");
                String placedescription = resultSet.getString("placedescription");
                String placeimage = resultSet.getString("placeimage");
        %>
        
        
        
        
        <div class="grid-item">
        <img src="<%= placeimage %>" alt="Place Image" height="500" width="500" >
       
        
        <div class="data">
            <h2><%= placename %></h2>
     		
            <p><%= placedescription %></p>
            
            </div>
            
        </div>
        <% 
            }

        } catch (ClassNotFoundException | SQLException e) {
            // Handle any errors that occur during database operations
            e.printStackTrace();
        } finally {
            // Close the database resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        %>
    </div>
</body>
</html>
