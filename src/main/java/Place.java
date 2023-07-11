
public class Place {

	
	String name,description,imageurl;
	
	
	


	public Place(String name, String description, String imageurl) {
		super();
		this.name = name;
		this.description = description;
		this.imageurl = imageurl;
	}

	public Place() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	
	
}
