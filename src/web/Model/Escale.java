package web.Model;

import java.sql.Timestamp;

public class Escale {
    private int id_escale;
    private Excurssion excurssion ;
    private String nom;
    private Ville villeEscale ;
    private Timestamp dateEntree,dateSortie ;

    public Escale() {
    }

    public Excurssion getExcurssion() {
        return excurssion;
    }

    public void setExcurssion(Excurssion excurssion) {
        if(this.excurssion == null){
            this.excurssion = excurssion;
            this.excurssion.addEscale(this);
        }    }

    public int getId_escale() {
        return id_escale;
    }

    public void setId_escale(int id_escale) {
        this.id_escale = id_escale;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Ville getVilleEscale() {
        return villeEscale;
    }

    public void setVilleEscale(Ville villeEscale) {
        this.villeEscale = villeEscale;
    }

    public Timestamp getDateEntree() {
        return dateEntree;
    }

    public void setDateEntree(Timestamp dateEntree) {
        this.dateEntree = dateEntree;
    }

    public Timestamp getDateSortie() {
        return dateSortie;
    }

    public void setDateSortie(Timestamp dateSortie) {
        this.dateSortie = dateSortie;
    }
}
