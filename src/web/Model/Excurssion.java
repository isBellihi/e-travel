package web.Model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class Excurssion extends Voyage {
    private int id_excurssion;
    private int nbrPlace;
    private double frais ;
    private String description;
    private String regelement ;
    private String titre ;
    private String fiche ;
    private Set<Outil> outils ;
    private Set<Reservation> reservations ;
    private Set<Escale> escales ;
    private Client client ;

    public Excurssion(){
        outils = new HashSet<>();
        reservations = new HashSet<>();
        escales = new HashSet<>();
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        if(this.client == null){
            this.client = client;
            this.client.addExcurssion(this);
        }
    }

    public Set<Outil> getOutils() {
        return outils;
    }

    public void setOutils(Set<Outil> outils) {
        this.outils = outils;
    }

    public void addReservation(Reservation reservation){
        this.reservations.add(reservation);
        reservation.setExcurssion(this);
    }

    public void addOutil(Outil outil){
        this.outils.add(outil);
        outil.setExcurssion(this);
    }

    public void addEscale(Escale escale){
        this.escales.add(escale);
        escale.setExcurssion(this);
    }

    public Set<Escale> getEscales(){
        return escales ;
    }

    public Set<Reservation> getReservations() {
        return reservations;
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

    public String getRegelement() {
        return regelement;
    }
    public void setRegelement(String reglement) {
        this.regelement = reglement;
    }
}
