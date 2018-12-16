package web.Model;

import java.sql.Date;
import java.util.ArrayList;

public class Excurssion extends Voyage {
    private int id_excurssion;
    private int nbrPlace;
    private double frais ;
    private String description;
    private String reglement ;
    private String titre ;
    private String fiche ;
    private ArrayList<Outil> outils ;

    public Excurssion(){
        outils = new ArrayList<Outil>();
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getFiche() {
        return fiche;
    }

    public void setFiche(String fiche) {
        this.fiche = fiche;
    }

    public int getId_excurssion() {
        return id_excurssion;
    }

    public void setId_excurssion(int id_excurssion) {
        this.id_excurssion = id_excurssion;
    }

    public int getNbrPlace() {
        return nbrPlace;
    }

    public void setNbrPlace(int nbrPlace) {
        this.nbrPlace = nbrPlace;
    }

    public double getFrais() {
        return frais;
    }

    public void setFrais(double frais) {
        this.frais = frais;
    }

    @Override
    public String getDescription() {
        return description;
    }

    @Override
    public void setDescription(String description) {
        this.description = description;
    }

    public String getReglement() {
        return reglement;
    }

    public void setReglement(String reglement) {
        this.reglement = reglement;
    }
}
