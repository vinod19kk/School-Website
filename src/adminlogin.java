

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminlogin
 */
@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public adminlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		
		String dbemail="";
		String dbpassword="";
		
		Connection con=dbconnection.getMySqlConnection();
		String sql="select * from schoolproject.admin where email=? and password=?";
		
		try {
		
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				dbemail=rs.getString(2);
				dbpassword=rs.getString(3);
				
			}
			
			if(dbemail.equals(email)&&dbpassword.equals(password))
			{
				response.sendRedirect("hi.html");
			}
			
			else
			{
				
				
				/*out.println("<font color =#e84327><h2 style=\"text-align: center; margin-top: 12%; margin-left: 22%;\"> Invalid  Username  or  Password</h2></font>");*/
				RequestDispatcher rd=request.getRequestDispatcher("adminlogin.html");
				rd.include(request,response);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
