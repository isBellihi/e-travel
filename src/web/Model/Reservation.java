package web.Model;

import java.util.HashSet;
import java.util.Set;

public class Reservation {

    private int id_reseravation;
    private Double prixTotal ;
    private Excurssion excurssion ;
    private Client client ;
    private Boolean confirme ;
    private Set<Message> messages ;

    public Reservation(){
        messages = new HashSet<Message>();
    }

    public void addMessage(Message msg){
        this.messages.add(msg);
        msg.setResrvavtion(this);
    }

    public Set<Message> getMessages(){
        return messages;
    }

    public int getId_reseravation() {
        return id_reseravation;
    }

    public void setId_reseravation(int id_reseravation) {
        this.id_reseravation = id_reseravation;
    }

    public Double getPrixTotal() {
        return prixTotal;
    }

    public void setPrixTotal(Double prixTotal) {
        this.prixTotal = prixTotal;
    }

    public Excurssion getExcurssion() {
        return excurssion;
    }

    public void setExcurssion(Excurssion excurssion) {
        if(this.excurssion == null){
            this.excurssion = excurssion;
            this.excurssion.addReservation(this);
        }
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        if(this.client == null){
            this.client = client;
            this.client.addReservation(this);
            this.excurssion.addReservation(this);
        }
    }

    public Boolean getConfirme() {
        return confirme;
    }

    public void setConfirme(Boolean confirme) {
        this.confirme = confirme;
    }
}
