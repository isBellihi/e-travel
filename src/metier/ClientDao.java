package metier;

import web.Model.Client;
import web.Model.Excurssion;
import web.Model.Reservation;
import web.Model.SingletonConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

public class ClientDao extends DAO<Client> {
    private Connection connection;
//id_client	prenom	nom	address	dateNaissance	NumTele
    public ClientDao(){
        connection = SingletonConnection.getInstance();
    }
    private Client extractClientFromResultSet(ResultSet res){
        Client client = new Client();
        try {
            client.setId_client(res.getInt("id_Client"));
            client.setEmail(res.getString("email"));
            client.setPasswd(res.getString("passwd"));
            client.setNom(res.getString("nom"));
            client.setPrenom(res.getString("prenom"));
            client.setAddress(res.getString("address"));
            client.setDateNaissance(res.getString("dateNaissance"));
            client.setNumTele(res.getString("NumTele"));
            client.setImage(res.getString("image"));
            return client;
        }catch (Exception e){
            return  null;
        }

    }

    public Client find(String username,String pass) {
        try {
            PreparedStatement stm = connection.prepareStatement("select * from client where email = ? and passwd = ? ;");
            stm.setString(1,username);
            stm.setString(2,pass);
            ResultSet res = stm.executeQuery();
            if(res.next()){
                return extractClientFromResultSet(res);
            }else {
                return null;
            }
        }catch (Exception e){
            System.out.println("error find by email and passwd " + e);
        }
        return null;
    }

    @Override
    public Set<Client> find(String attribut,int value) {
        Set<Client> set = new HashSet<>();
        try {
            Statement stm = connection.createStatement();
            ResultSet res = stm.executeQuery("select * from Client where " + attribut + " = " + value + ";");
            while(res.next()){
                set.add(extractClientFromResultSet(res));
            }
            return set ;
        }catch (Exception e){
            return null;
        }
    }

    @Override
    public Set<Client> getAll() {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Client");
            Set clients = new HashSet();
            while(rs.next())
            {
                Client client = extractClientFromResultSet(rs);
                clients.add(client);
            }
            return clients;
        } catch (Exception ex) {

        }
        return null;
    }


    @Override
    public boolean insert(Client client) {
//id_client	prenom	nom	address	dateNaissance	NumTele
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO Client" +
                    "(email,passwd,nom, prenom, address,dateNaissance,NumTele,image)" +
                    "VALUES (?, ? , ? , ? , ?, ?, ?, ?)");
            ps.setString(1, client.getEmail());
            ps.setString(2, client.getPasswd());
            ps.setString(3, client.getNom());
            ps.setString(4, client.getPrenom());
            ps.setString(5, client.getAddress());
            ps.setString(6, client.getDateNaissance());
            ps.setString(7, client.getNumTele());
            if(client.getImage() != null){
                ps.setString(8, client.getImage());
            }else{
                ps.setString(8,"/e-travel/public/front/images/profils/defaultprofil.png") ;
            }


            int i = ps.executeUpdate();
            if(i == 1) {
                return true;
            }
        } catch (Exception ex) {
            System.out.println("error insert client : " + ex);
        }
        return false;
    }

    @Override
    public boolean update(Client client) {
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE Client set email = ? , passwd = ? , nom =? , prenom = ? , " +
                    "address = ? , dateNaissance = ? , NumTele = ? ,image = ? where id_Client = ? ;");
            ps.setString(1, client.getEmail());
            ps.setString(2, client.getPasswd());
            ps.setString(3, client.getNom());
            ps.setString(4, client.getPrenom());
            ps.setString(5, client.getAddress());
            ps.setString(6, client.getDateNaissance());
            ps.setString(7, client.getNumTele());
            ps.setString(8, client.getImage());
            ps.setInt(9, client.getId_client());


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
            int i = stmt.executeUpdate("DELETE FROM Client WHERE id_Client=" + id);
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
            String sql = "select max(id_client) from client ;" ;
            ResultSet res = stm.executeQuery(sql);
            if(res.next()){
                a = res.getInt(1);
            }
        }catch (Exception e){

        }

        return a ;
    }

    public Set<Excurssion> getExcurssions(Client client){
        Set<Excurssion> set = new HashSet();
        DAO<Excurssion> excurssionDao = new ExcurssionDao();
        set = excurssionDao.find("id_client",client.getId_client());
        for (Excurssion excurssion : set){
            client.addExcurssion(excurssion);
        }
        return set ;
    }

    public Set<Reservation> getReservations(Client client){
        Set<Reservation> set = new HashSet<>();
        DAO<Reservation> reservationDao = new ReservationDao();
        set = reservationDao.find("id_client" , client.getId_client());
        for (Reservation reservation : set){
            client.addReservation(reservation);
        }
        return set ;
    }
}
