package com.Freelance.beans;

public class Buyer {
	private String username;
	private String motdepasse;
	private String nom;
	private String prenom;
	private String ville;
	private int projetsPostés;
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the motdepasse
	 */
	public String getMotdepasse() {
		return motdepasse;
	}
	/**
	 * @param motdepasse the motdepasse to set
	 */
	public void setMotdepasse(String motdepasse) {
		this.motdepasse = motdepasse;
	}
	/**
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}
	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}
	/**
	 * @return the prenom
	 */
	public String getPrenom() {
		return prenom;
	}
	/**
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	/**
	 * @return the ville
	 */
	public String getVille() {
		return ville;
	}
	/**
	 * @param ville the ville to set
	 */
	public void setVille(String ville) {
		this.ville = ville;
	}
	/**
	 * @return the projetsPostés
	 */
	public int getProjetsPostés() {
		return projetsPostés;
	}
	/**
	 * @param projetsPostés the projetsPostés to set
	 */
	public void setProjetsPostés(int projetsPostés) {
		this.projetsPostés = projetsPostés;
	}
}
