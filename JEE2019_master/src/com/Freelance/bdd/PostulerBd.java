package com.Freelance.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Freelance.beans.Postuler;

public class PostulerBd {
	
	private Connection connexion;
	
	public void postuler (Postuler p) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO postuler(titreduprojet,usernamef) VALUES(?, ?);");
            preparedStatement.setString(1, p.getTitre());
            preparedStatement.setString(2, p.getUsername());
            preparedStatement.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	 public List<Postuler> recupererPostes() {
	        List<Postuler> Postes = new ArrayList<Postuler>();
	        Statement statement = null;
	        ResultSet resultat = null;

	        loadDatabase();
	        
	        try {
	        	// Exécution de la requête
	        	
	        	statement = connexion.createStatement();
	        	resultat = statement.executeQuery("SELECT UsernameF, TitreDuProjet FROM postuler;");

	            
	           

	            // Récupération des données
	            while (resultat.next()) {
	            	
	                String username = resultat.getString("UsernameF");
	                String titre = resultat.getString("TitreDuProjet");
	                
	                Postuler p = new Postuler();
	                p.setTitre(titre);
	                p.setUsername(username);
	               
	                Postes.add(p);
	            }
	        } catch (SQLException e) {
	        } finally {
	            // Fermeture de la connexion
	            try {
	                if (resultat != null)
	                    resultat.close();
	                if (statement != null)
	                	statement.close();
	                if (connexion != null)
	                    connexion.close();
	            } catch (SQLException ignore) {
	            }
	        }
	        
	        return Postes;
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
