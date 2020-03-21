package com.Freelance.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Freelance.bdd.LoginBd;

/**
 * Servlet implementation class LoginS
 */
@WebServlet("/LoginS")
public class LoginS extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginS() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out = response.getWriter();
		String username = request.getParameter("Username");
		String passwrd = request.getParameter("motdepasse");
		LoginBd Login = new LoginBd();
		
		//String type = request.getParameter("type").toString();
		
		
		if(Login.TestloginB(username, passwrd)==0) 
			response.sendRedirect("buyer");
		
			//else response.sendRedirect("Inscription");
		
		else if (Login.TestloginF(username, passwrd)==0) 
			response.sendRedirect("freelancer");
		else { 
			request.setAttribute( "erreur", "Wrong password or Username" );
			//out.println("erreur vous avez saisi : " + username +" " + passwrd +"  Username ou mot de passe non valide");
			this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
		}
	
		
	}
	
	
}
