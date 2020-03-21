package com.Freelance.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginBd {
			
	private Connection connexion;
	PreparedStatement psm;
	
	public int TestloginB (String username , String passwrd) {
		
		int reslt = 3;
		
		loadDatabase();
		
		  try {
			psm = connexion.prepareStatement("select * from buyer where UserNameB = ? and MotDePasseB = ?;");
			psm.setString(1, username);
            psm.setString(2, passwrd);
            
            ResultSet res = psm.executeQuery();
            if(res.next()) {
            	reslt = 0;
            }
            else reslt = 11;
			}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//System.out.println(" probleme de cnx à la bd " + e);
			reslt = 2;
			}
		  
	return reslt;
	}		
	
	public int TestloginF (String username , String passwrd) {
		
		int reslt = 31;
		loadDatabase();
		
		try {
			psm = connexion.prepareStatement("select * from freelancer where UserNameF = ? and MotDePasseF = ?;");
		
		psm.setString(1, username);
        psm.setString(2, passwrd);
        
        ResultSet res = psm.executeQuery();
        if(res.next()) {
        	reslt = 0;// utilisateur existe
        }
        else reslt = 12; // wrong login;
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		reslt = 2;
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
