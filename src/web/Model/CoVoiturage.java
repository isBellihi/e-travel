package web.Model;

public class CoVoiturage extends Voyage {
    private int  id_coVoiturage;
    private int nbrPlace ;
    private Double frais ;
    private  String marqueVoiture ;

    public CoVoiturage(){}

    public int getId_coVoiturage() {
        return id_coVoiturage;
    }

    public void setId_coVoiturage(int id_coVoiturage) {
        this.id_coVoiturage = id_coVoiturage;
    }

    public int getNbrPlace() {
        return nbrPlace;
    }

    public void setNbrPlace(int nbrPlace) {
        this.nbrPlace = nbrPlace;
    }

    public Double getFrais() {
        return frais;
    }

    public void setFrais(Double frais) {
        this.frais = frais;
    }

    public String getMarqueVoiture() {
        return marqueVoiture;
    }

    public void setMarqueVoiture(String marqueVoiture) {
        this.marqueVoiture = marqueVoiture;
    }
}
