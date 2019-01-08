package web.Model;


import java.sql.Date;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class Client {
    //`id_client`, `prenom`, `nom`, `address`, `dateNaissance`, `NumTele`SELECT * FROM `client` WHERE 1
    private int id_client;
    private String prenom;
    private String nom;
    private String address;
    private String dateNaissance;
    private String numTele;
    private String email ;
    private String passwd ;
    private String image;
    private Set<Excurssion> excurssions ;
    private Set<Reservation> reservations ;

    public Client(){
        excurssions = new HashSet<Excurssion>();
        reservations = new HashSet<Reservation>();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void addExcurssion(Excurssion excurssion){
        this.excurssions.add(excurssion);
        excurssion.setClient(this);
    }

    public void addReservation(Reservation reservation){
        this.reservations.add(reservation);
        reservation.setClient(this);
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
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

    public String getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(String dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getNumTele() {
        return numTele;
    }

    public void setNumTele(String numTele) {
        this.numTele = numTele;
    }
}
