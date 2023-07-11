

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import com.google.gson.Gson;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetPlaceData
 */
@WebServlet("/GetPlaceData")
public class GetPlaceData extends javax.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;
	int resultcode=200;

    /**
     * Default constructor. 
     */
    public GetPlaceData() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String mainplace=request.getParameter("placename");
		
		
		
		
		
		 ArrayList<Place> placeList = new ArrayList<>();
		
		
		ArrayList<String> placesnames=getPlaceList(mainplace);

		
		Iterator<String> it = placesnames.iterator();
		 
        // Holds true till there is single element
        // remaining in the list
		int k=1;
        while (it.hasNext() && k<=8)
        {
 
          Place place=getplacedata(it.next());
          placeList.add(place);
          k++;
          
        }
		
		
        if(placeList.isEmpty())
		{
			resultcode=404;
		}
		
		
	    

        Gson gson = new Gson();
        String json = gson.toJson(placeList);
        
        response.setCharacterEncoding("UTF-8");
        
      
     response.setContentType("application/json");
     
     
        // Writing the ArrayList data as JSON to the response
        PrintWriter out = response.getWriter();
        
        
        out.print("{ \"places\": " + json + ", \"resultCode\": " + resultcode + " }");
        out.flush();
        
		
	}

	private Place getplacedata(String placename) {
		
		 String baseUrl = "https://en.wikipedia.org/w/api.php";
	        
	        Place place=new Place();
	        try {
	            // Set up the API request URL using URIBuilder
	            URIBuilder uriBuilder = new URIBuilder(baseUrl);
	          
				uriBuilder.setParameter("action", "query")
	                      .setParameter("format", "json")
	                      .setParameter("prop", "extracts|pageimages")
	                      .setParameter("exintro", "")
	                      .setParameter("explaintext", "")
	                      .setParameter("piprop", "original")
	                      .setParameter("titles", placename);

	            // Create the URI object
	            String requestUrl = uriBuilder.build().toString();

	            // Send the API request
	            HttpClient httpClient = HttpClientBuilder.create().build();
	            HttpGet request = new HttpGet(requestUrl);
	            HttpResponse response = httpClient.execute(request);
	            HttpEntity entity = response.getEntity();
	            String responseBody = EntityUtils.toString(entity);

	            // Parse the JSON response
	            JSONObject jsonObject = new JSONObject(responseBody);
	            JSONObject pages = jsonObject.getJSONObject("query").getJSONObject("pages");
	          
	            
	            
	            
	            String pageId = pages.keySet().iterator().next();
	            JSONObject page = pages.getJSONObject(pageId);
	            
	            String description = page.getString("extract");
	            
	            String title=page.getString("title");
	           

	            // Check if the "original" key exists
	            String imageUrl = "";
	           
	            if (page.has("thumbnail")) {
	                JSONObject thumbnail = page.getJSONObject("thumbnail");
	                imageUrl = thumbnail.getString("source");
	            } else if (page.has("original")) {
	                JSONObject original = page.getJSONObject("original");
	                imageUrl = original.getString("source");
	            }

	           
	                
	            place.setName(title);
		        place.setDescription(description);
		        place.setImageurl(imageUrl);
		        
	            

	        } catch (IOException e) {
	        	e.printStackTrace();
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
	        
	        
	      
	        
	        
	        return place;
		
	}

	private ArrayList<String> getPlaceList(String searchQuery) {
		
		ArrayList<String> placesname=new ArrayList<>();
		
		  String baseUrl = "https://en.wikipedia.org/w/api.php";
	        

	        try {
	            // Encode the search query
	            String encodedSearchQuery = URLEncoder.encode(searchQuery, StandardCharsets.UTF_8.toString());

	            // Set up the API request URL
	            String requestUrl = String.format("%s?action=query&format=json&list=search&srsearch=%s", baseUrl, encodedSearchQuery);

	            // Send the API request
	            HttpClient httpClient = HttpClientBuilder.create().build();
	            HttpGet request = new HttpGet(requestUrl);
	            HttpResponse response = httpClient.execute(request);
	            HttpEntity entity = response.getEntity();
	            String responseBody = EntityUtils.toString(entity);

	            // Parse the JSON response
	            JSONObject jsonObject = new JSONObject(responseBody);
	            JSONArray searchResults = jsonObject.getJSONObject("query").getJSONArray("search");

	            // Extract the page titles from the search results
	            for (int i = 0; i < searchResults.length(); i++) {
	                JSONObject result = searchResults.getJSONObject(i);
	                String pageTitle = result.getString("title");
	                placesname.add(pageTitle);
	            }

	        } catch (IOException e) {
	        	
	          e.printStackTrace();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        
	        return placesname;
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
