package web.Model;


import java.sql.Date;

public class Client {
    //`id_client`, `prenom`, `nom`, `address`, `dateNaissance`, `NumTele`SELECT * FROM `client` WHERE 1
    private int id_client;
    private String prenom;
    private String nom;
    private String address;
    private Date dateNaissance;
    private String numTele;

    public Client(){

    }

    public Client(int id_client, String prenom, String nom, String address, Date dateNaissance, String numTele) {
        this.id_client = id_client;
        this.prenom = prenom;
        this.nom = nom;
        this.address = address;
        this.dateNaissance = dateNaissance;
        this.numTele = numTele;
    }

    public int getId_client() {
        return id_client;
    }

    public void setId_client(int id_client) {
        this.id_client = id_client;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getNumTele() {
        return numTele;
    }

    public void setNumTele(String numTele) {
        this.numTele = numTele;
    }
}
