package metier;

import web.Model.Message;
import web.Model.Reservation;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

public class MessageDao extends DAO<Message>{

    public MessageDao(){
        super();
    }


    private Message extractMessageFromResultSet(ResultSet res) {
        Message message = new Message();
//id_message	id_reservation	message
        try {
            message.setId_message(res.getInt("id_message"));
            message.setResrvavtion(new ReservationDao().find("id",res.getInt("id_reservation")).iterator().next());
            message.setMessage(res.getString("message"));
            message.setCreated_at(res.getTimestamp("created_at"));
            message.setExpediteur(res.getBoolean("expediteur"));
            return message;
        }catch (Exception e){
            System.out.println("error extractMessageFromResultSet:" + e);
        }
        return null;
    }

    @Override
    public Set<Message> find(String attribut,int value) {
        Set<Message> set = new HashSet<>();
        try {
            Statement stm = connection.createStatement();
            ResultSet res = stm.executeQuery("select * from Message where " + attribut +" = " +value + ";");
            while (res.next()){
                set.add(extractMessageFromResultSet(res));
            }
            return set;
        }catch (Exception e){
            return null;
        }
    }
    @Override
    public Set<Message> getAll() {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Message ;");
            Set messages = new HashSet();
            while(rs.next())
            {
                Message message = extractMessageFromResultSet(rs);
                messages.add(message);
            }
            return messages;
        } catch (Exception ex) {
            System.out.println("error get all messages : " + ex.getMessage());
        }
        return null;
    }

    private int getMAxId(){
        int a = 0;
        try {
            Statement stm = connection.createStatement();
            String sql = "select max(id_message) from message ;" ;
            ResultSet res = stm.executeQuery(sql);
            if(res.next()){
                a = res.getInt(1);
            }
        }catch (Exception e){

        }

        return a ;
    }

    @Override
    public boolean insert(Message message) {
        /**
         //id_message	id_reservation	message
         **/
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO message" +
                    "(id_reservation,message,expediteur) " +
                    "VALUES (?, ?, ?)");
            ps.setInt(1, message.getReservation().getId_reseravation());
            ps.setString(2, message.getMessage() );
            ps.setBoolean(3,message.getExpediteur());


            int i = ps.executeUpdate();
            if(i > 0) {
                /*DAO<Outil> outilDAO = new OutilDao();
                for (Outil outil : message.getOutils()){
                    outilDAO.insert(outil);
                }*/
                return true;
            }
        } catch (Exception ex) {
            System.out.println("error INSERT message: " + ex);
        }
        return false;
    }

    @Override
    public boolean update(Message message) {
        /**
         //id_message	id_reservation	message
         **/
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE message set id_reservation =?" +
                    " , message = ? where id_message = ? ;");


            ps.setInt(1, message.getReservation().getId_reseravation());
            ps.setString(2, message.getMessage() );
            ps.setInt(3,message.getId_message());

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
            int i = stmt.executeUpdate("DELETE FROM message WHERE id_message=" + id);
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
            String sql = "select max(id_message) from message ;" ;
            ResultSet res = stm.executeQuery(sql);
            if(res.next()){
                a = res.getInt(1);
            }
        }catch (Exception e){

        }

        return a ;
    }

}
