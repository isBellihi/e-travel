package web.Model;

import java.sql.Timestamp;

public class Message {
    /**
     *     id_message
     *             id_reservation
     *     created_at
     *             expediteur
     *     message
     */

    private int id_message ;
    private Reservation reservation ;
    private String msg ;
    private Timestamp createdat ;
    private Boolean expediteur = null ; // null ==> client vers le hote , different de null hote vers le client

    public Message(){}

    public Boolean getExpediteur() {
        return expediteur;
    }

    public Timestamp getCreatedat(){
        return createdat ;
    }

    public void setExpediteur(Boolean expediteur) {
        this.expediteur = expediteur;
    }

    public Timestamp getCreated_at(){
        return createdat ;
    }

    public void setCreated_at(Timestamp created){
        this.createdat = created ;
    }

    public int getId_message() {
        return id_message;
    }

    public void setId_message(int id_message) {
        this.id_message = id_message;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public void setResrvavtion(Reservation reservation) {
        if(this.reservation ==null) {
            this.reservation = reservation;
            reservation.addMessage(this);
        }
    }

    public String getMsg() {
        return msg;
    }
    public String getMessage() {
        return msg;
    }

    public void setMessage(String message) {
        this.msg = message;
    }
}
