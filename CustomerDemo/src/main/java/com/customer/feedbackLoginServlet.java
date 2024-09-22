package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/feedbackLoginServlet")
public class feedbackLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
	
		boolean isTrue;
		
		isTrue = feedbackDBUtil.validate(email);
		
		if (isTrue == true) {
			List<feedback> feedDetails = feedbackDBUtil.getfeedback(email);
			request.setAttribute("feedDetails", feedDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userfeedback.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your email is incorrect');");
			out.println("location='feedprofile.jsp'");
			out.println("</script>");
		}
		
	}

}