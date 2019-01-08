package web.Model;

public class Outil {

    private String nom;
    private int id_outil;
    private String description ;
    private Double prixReservation ;
    private int quantiteDisp ;
    private Excurssion excurssion;

    public Outil(){

    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getId_outil() {
        return id_outil;
    }

    public void setId_outil(int id_outil) {
        this.id_outil = id_outil;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrixReservation() {
        return prixReservation;
    }

    public void setPrixReservation(Double prixReservation) {
        this.prixReservation = prixReservation;
    }

    public int getQuantiteDisp() {
        return quantiteDisp;
    }

    public void setQuantiteDisp(int quantiteDisp) {
        this.quantiteDisp = quantiteDisp;
    }

    public Excurssion getExcurssion() {
        return excurssion;
    }

    public void setExcurssion(Excurssion excurssion) {
        if(this.excurssion ==null) {
            this.excurssion = excurssion;
            excurssion.addOutil(this);
        }
    }
}
