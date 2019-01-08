package web.Model;

import java.sql.Date;
import java.sql.Timestamp;

public class Voyage {
    private int id_voyage ;
    private Timestamp dateDepart, dateArrivee ;
    private String description;
    private Ville villeDepart, villeArrivee;

    public Voyage(int id_voyage, Timestamp dateDepart, Timestamp dateArivee, String description, Ville villeDepart, Ville villeArivee) {
        this.id_voyage = id_voyage;
        this.dateDepart = dateDepart;
        this.dateArrivee = dateArivee;
        this.description = description;
        this.villeDepart = villeDepart;
        this.villeArrivee = villeArivee;
    }
    public Voyage(){

    }
    public int getId_voyage() {
        return id_voyage;
    }

    public void setId_voyage(int id_voyage) {
        this.id_voyage = id_voyage;
    }

    public Timestamp getDateDepart() {
        return dateDepart;
    }

    public void setDateDepart(Timestamp dateDepart) {
        this.dateDepart = dateDepart;
    }

    public Timestamp getDateArrivee() {
        return dateArrivee;
    }

    public void setDateArivee(Timestamp dateArivee) {
        this.dateArrivee = dateArivee;
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
        return villeArrivee;
    }

    public Ville getVilleArrivee() {
        return villeArrivee;
    }


    public void setVilleArivee(Ville villeArivee) {
        this.villeArrivee = villeArivee;
    }
}
