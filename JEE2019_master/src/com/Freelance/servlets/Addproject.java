package com.Freelance.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.Freelance.bdd.ProjetBd;
import com.Freelance.beans.Project;

/**
 * Servlet implementation class Addproject
 */
@WebServlet("/Addproject")
public class Addproject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addproject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/WEB-INF/addproject.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		Project p = new Project();
		p.setUsernameB(request.getParameter("Username"));
        p.setCat(request.getParameter("cat"));
        p.setDesc(request.getParameter("desc"));
        p.setTitre(request.getParameter("titre"));
        p.setBudget(Integer.parseInt(request.getParameter("Budget")));
        
        ProjetBd pb = new ProjetBd();
        pb.ajouterProjet(p);
        
        response.sendRedirect("buyer");
	}

}
