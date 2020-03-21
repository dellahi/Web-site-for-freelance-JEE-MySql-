package com.Freelance.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Freelance.beans.Buyer;

public class BuyerBd {
	
	private Connection connexion;
	
	public String ajouterBuyer(Buyer B) {
		
       String reslt;
        try {
        
        	 loadDatabase();
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO buyer(UserNameB,MotDePasseB,NomB,PrenomB,VilleB,ProjetsPostes) VALUES(?, ?,?,?,?,?);");
         
        	preparedStatement.setString(1, B.getUsername());
            preparedStatement.setString(2, B.getMotdepasse());
            preparedStatement.setString(3, B.getNom());
            preparedStatement.setString(4, B.getPrenom());
            preparedStatement.setString(5, B.getVille());
            preparedStatement.setInt(6, B.getProjetsPostés());
            
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
