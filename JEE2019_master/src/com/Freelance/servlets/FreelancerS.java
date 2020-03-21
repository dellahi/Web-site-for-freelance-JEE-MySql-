package com.Freelance.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Freelance.bdd.FreelancerBd;
import com.Freelance.beans.Freelancer;

/**
 * Servlet implementation class FreelancerS
 */
@WebServlet("/FreelancerS")
public class FreelancerS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreelancerS() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/WEB-INF/freelancer.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Freelancer F = new Freelancer();
        F.setNom(request.getParameter("nom"));
        F.setPrenom(request.getParameter("prenom"));
        F.setMotdepasse(request.getParameter("motdepasse"));
        F.setApropos(request.getParameter("Apropos"));
        F.setVille(request.getParameter("ville"));
        F.setUsername(request.getParameter("Username"));
        F.setPrixParheure(Integer.parseInt(request.getParameter("prix")));
        
        FreelancerBd Fb = new FreelancerBd();
        String msg =  Fb.ajouterFreelancer(F);
        if (msg == "Yes")
        	response.sendRedirect("freelancer");
        else
        {
        	request.setAttribute( "erreur", msg );
        	this.getServletContext().getRequestDispatcher("/WEB-INF/freelancer.jsp").forward(request, response);
 
        }
	
	}

}
