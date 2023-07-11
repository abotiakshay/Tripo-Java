

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ff
 */
@WebServlet("/ff")
public class ff extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  private UserDAO userDAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ff() {
        super();
        // TODO Auto-generated constructor stub
    }
   
    public void init() {
        userDAO = new UserDAO();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String email = request.getParameter("email");
        String password = request.getParameter("password");

		userDAO.registerUser(email, password);

		PrintWriter out=response.getWriter();
		out.print("Login Successfull");
		 HttpSession session = request.getSession();
         session.setAttribute("loggedInUser", email);
		 response.sendRedirect("home.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
