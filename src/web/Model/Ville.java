package web.Model;

public class Ville {
    private int id_ville;
    private String nom;
    private String region ;
    private String description ;

    public Ville(int id_ville, String nom, String region, String description) {
        this.id_ville = id_ville;
        this.nom = nom;
        this.region = region;
        this.description = description;
    }
    public Ville(){

    }

    public int getId_ville() {
        return id_ville;
    }

    public void setId_ville(int id_ville) {
        this.id_ville = id_ville;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
