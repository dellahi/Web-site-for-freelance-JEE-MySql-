package com.Freelance.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Freelance.beans.Freelancer;

public class FreelancerBd {
	
	private Connection connexion;
	
	
	public String ajouterFreelancer(Freelancer F) {
		
		String reslt;
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO freelancer(UserNameF,MotDePasseF,Nomf,PrenomF,PrixParheure,ProjetRealise,VilleF,A__propos) VALUES(?, ?,?,?,?,?,?,?);");
            preparedStatement.setString(1, F.getUsername());
            preparedStatement.setString(2, F.getMotdepasse());
            preparedStatement.setString(3, F.getNom());
            preparedStatement.setString(4, F.getPrenom());
            preparedStatement.setInt(5, F.getPrixParheure());
            preparedStatement.setInt(6, F.getProjetsRéalisés());
            preparedStatement.setString(7, F.getVille());
            preparedStatement.setString(8, F.getApropos());
            
            preparedStatement.executeUpdate();
            
            reslt = "Yes";
        } catch (SQLException e) {
            //e.printStackTrace();
        	reslt = "Erreur lors de l'inscription : <br/>" + e.getMessage();
        }
        return reslt;
    }
	private void loadDatabase() {
        // Chargement du driver
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","j2ee", "jee");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
