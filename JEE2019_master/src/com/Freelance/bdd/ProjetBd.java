package com.Freelance.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Freelance.beans.Project;

public class ProjetBd {
	
private Connection connexion;
	
	
	public void ajouterProjet(Project p) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO projet(titreduprojet,budget,description,usernameb,nomcat) VALUES(?, ?,?,?,?);");
            preparedStatement.setString(1, p.getTitre());
            preparedStatement.setInt(2, p.getBudget());
            preparedStatement.setString(3, p.getDesc());
            preparedStatement.setString(4, p.getusernameB());
            preparedStatement.setString(5, p.getCat());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	 public List<Project> recupererProjets() {
	        List<Project> Projets = new ArrayList<Project>();
	        Statement statement = null;
	        ResultSet resultat = null;

	        loadDatabase();
	        
	        try {
	        	// Exécution de la requête
	        	
	        	statement = connexion.createStatement();
	        	resultat = statement.executeQuery("SELECT UsernameB, TitreDuProjet, budget FROM projet;");

	            
	           

	            // Récupération des données
	            while (resultat.next()) {
	            	
	                String username = resultat.getString("UsernameB");
	                String titre = resultat.getString("TitreDuProjet");
	                int budget =resultat.getInt("budget");
	                Project p = new Project();
	                p.setBudget(budget);
	                p.setTitre(titre);
	                p.setUsernameB(username);
	                p.setCat(null);
	                p.setDesc(null);
	                
	                Projets.add(p);
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
	        
	        return Projets;
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
