package web.Model;

import java.sql.Date;

public class Voyage {
    private int id_voyage ;
    private String dateDepart, dateArivee ;
    private String description;
    private Ville villeDepart, villeArivee;

    public Voyage(int id_voyage, String dateDepart, String dateArivee, String description, Ville villeDepart, Ville villeArivee) {
        this.id_voyage = id_voyage;
        this.dateDepart = dateDepart;
        this.dateArivee = dateArivee;
        this.description = description;
        this.villeDepart = villeDepart;
        this.villeArivee = villeArivee;
    }
    public Voyage(){

    }
    public int getId_voyage() {
        return id_voyage;
    }

    public void setId_voyage(int id_voyage) {
        this.id_voyage = id_voyage;
    }

    public String getDateDepart() {
        return dateDepart;
    }

    public void setDateDepart(String dateDepart) {
        this.dateDepart = dateDepart;
    }

    public String getDateArivee() {
        return dateArivee;
    }

    public void setDateArivee(String dateArivee) {
        this.dateArivee = dateArivee;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Ville getVilleDepart() {
        return villeDepart;
    }

    public void setVilleDepart(Ville villeDepart) {
        this.villeDepart = villeDepart;
    }

    public Ville getVilleArivee() {
        return villeArivee;
    }

    public void setVilleArivee(Ville villeArivee) {
        this.villeArivee = villeArivee;
    }
}
