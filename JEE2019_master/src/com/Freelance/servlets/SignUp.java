package com.Freelance.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Freelance.bdd.BuyerBd;
import com.Freelance.beans.Buyer;

/**
 * Servlet implementation class BuyerS
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/SignUp.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		Buyer B = new Buyer();
		
        B.setNom(request.getParameter("nom"));
        B.setPrenom(request.getParameter("prenom"));
        B.setMotdepasse(request.getParameter("motdepasse"));
        B.setVille(request.getParameter("ville"));
        B.setUsername(request.getParameter("Username"));
        
        BuyerBd Fb = new BuyerBd();
        String msg = Fb.ajouterBuyer(B);
        if(msg =="Yes")
        	response.sendRedirect("buyer");
        else {
        	request.setAttribute( "erreur", msg );
        this.getServletContext().getRequestDispatcher("/WEB-INF/SignUp.jsp").forward(request, response);
		 //out.println("erreur " +"  Username ou mot de passe non valide  ") ;	
        }
	}

}
