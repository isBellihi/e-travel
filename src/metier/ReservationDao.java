package metier;

import web.Model.CoVoiturage;
import web.Model.Message;
import web.Model.Reservation;
import web.Model.Outil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

public class ReservationDao extends DAO<Reservation>{

    public ReservationDao(){
        super();
    }

//id	prixTotal	id_excurssion	id_client	confirme
    private Reservation extractReservationFromResultSet(ResultSet res) {
        Reservation reservation = new Reservation();

        try {
            reservation.setId_reseravation(res.getInt("id"));
            reservation.setPrixTotal(res.getDouble("prixTotal"));
            reservation.setConfirme(res.getBoolean("confirme"));
            reservation.setExcurssion((new ExcurssionDao().find("id_excurssion" , res.getInt("id_excurssion"))).iterator().next());
            reservation.setClient((new ClientDao().find("id_client" , res.getInt("id_client"))).iterator().next());
            return reservation;
        }catch (Exception e){
            System.out.println("error extractReservationFromResultSet: \n" + e);
        }
        return null;
    }

    @Override
    public Set<Reservation> find(String attribut,int value) {
        Set<Reservation> set = new HashSet<>();
        try {
            Statement stm = connection.createStatement();
            ResultSet res = stm.executeQuery("select * from Reservation where " + attribut +" = " +value + ";");
            while (res.next()){
                set.add(extractReservationFromResultSet(res));
            }
            return set;
        }catch (Exception e){
            return null;
        }
    }
    @Override
    public Set<Reservation> getAll() {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Reservation ;");
            Set reservations = new HashSet();
            while(rs.next())
            {
                Reservation reservation = extractReservationFromResultSet(rs);
                reservations.add(reservation);
            }
            return reservations;
        } catch (Exception ex) {
            System.out.println("error getAll() reservation: " + ex.getMessage());
        }
        return null;
    }

    private int getMAxId(){
        int a = 0;
        try {
            Statement stm = connection.createStatement();
            String sql = "select max(id_reservation) from reservation ;" ;
            ResultSet res = stm.executeQuery(sql);
            if(res.next()){
                a = res.getInt(1);
            }
        }catch (Exception e){

        }

        return a ;
    }

    @Override
    public boolean insert(Reservation reservation) {
        /**
         //id	prixTotal	id_excurssion	id_client	confirme
         **/
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO reservation" +
                    "(prixTotal, id_excurssion, id_client,confirme) " +
                    "VALUES (?, ?, ?, ?)");
            ps.setDouble(1, reservation.getPrixTotal());
            ps.setInt(2, reservation.getExcurssion().getId_excurssion() );
            ps.setInt(3, reservation.getClient().getId_client());
            ps.setBoolean(4, reservation.getConfirme());


            int i = ps.executeUpdate();
            if(i > 0) {
                return true;
            }else {
            }
        } catch (Exception ex) {
            System.out.println("error INSERT Reservation: " + ex);
        }
        return false;
    }

    @Override
    public boolean update(Reservation reservation) {
        /**
         //id	prixTotal	id_excurssion	id_client	confirme
         **/
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE reservation set prixTotal =?" +
                    " , id_excurssion = ? , */ = ? ," +
                    "confirme = ? where id  =  ? ;");


            ps.setDouble(1, reservation.getPrixTotal());
            ps.setInt(2, reservation.getExcurssion().getId_excurssion());
            ps.setInt(3, reservation.getClient().getId_client());
            ps.setBoolean(4, reservation.getConfirme());
            ps.setInt(5, reservation.getId_reseravation());

            int i = ps.executeUpdate();
            if(i == 1) {
                return true;
            }
        } catch (Exception ex) {
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        try {
            Statement stmt = connection.createStatement();
            int i = stmt.executeUpdate("DELETE FROM reservation WHERE id = " + id);
            if(i == 1) {
                return true;
            }
        } catch (Exception ex) {

        }
        return false;
    }

    public int getMaxId(){
        int a = 0;
        try {
            Statement stm = connection.createStatement();
            String sql = "select max(id) from reservation ;" ;
            ResultSet res = stm.executeQuery(sql);
            if(res.next()){
                a = res.getInt(1);
            }
        }catch (Exception e){

        }

        return a ;
    }

    public Set<Message> getMessages(Reservation reservation){
        Set<Message> set = new HashSet<>();
        DAO<Message> messageDAO = new MessageDao();
        set = messageDAO.find("id_reservation" , reservation.getId_reseravation());
        for (Message msg : set){
            reservation.addMessage(msg);
        }
        return set ;
    }

}
