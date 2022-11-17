package Training.BusBookingProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Verify")
public class EmailVerify extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		System.out.println(email);
		HttpSession session=request.getSession();
		final String url="jdbc:mysql://localhost/busbooking";
		String USER = "root";
		String PASSWORD = "india@123";
		try {
			Connection conn = DriverManager.getConnection(url, USER, PASSWORD);
			final String sql="select * from user_detail where email=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				response.getWriter().println("no");
				
			}
			else {
				response.getWriter().println("yes");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		response.getWriter().append("Served at:").append(request.getContextPath());
	}

}
