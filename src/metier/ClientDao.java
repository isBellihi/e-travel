package metier;

import web.Model.Client;
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
            client.setNom(res.getString("nom"));
            client.setPrenom(res.getString("prenom"));
            client.setAddress(res.getString("address"));
            client.setDateNaissance(res.getDate("dateNaissance"));
            client.setNumTele(res.getString("NumTele"));

            return client;
        }catch (Exception e){
            return  null;
        }

    }
    @Override
    public Client find(int id) {
        try {
            Statement stm = connection.createStatement();
            ResultSet res = stm.executeQuery("select * from Client where id_Client = " + id + ";");
            if(res.next()){
                return extractClientFromResultSet(res);
            }else {
                return null;
            }
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
                    "(nom, prenom, address,dateNaissance,NumTele)" +
                    "VALUES (?, ? , ? , ? , ?)");
            ps.setString(1, client.getNom());
            ps.setString(2, client.getPrenom());
            ps.setString(3, client.getAddress());
            ps.setString(4, client.getDateNaissance().toString());
            ps.setString(5, client.getNumTele());

            int i = ps.executeUpdate();
            if(i == 1) {
                return true;
            }
        } catch (Exception ex) {
        }
        return false;
    }

    @Override
    public boolean update(Client client) {
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE Client set nom =? , prenom = ? , " +
                    "address = ? , dateNaissance = ? , NumTele = ? , where id_Client = ? ;");
            ps.setString(1, client.getNom());
            ps.setString(2, client.getPrenom());
            ps.setString(3, client.getAddress());
            ps.setDate(4, client.getDateNaissance());
            ps.setString(5, client.getNumTele());
            ps.setInt(3, client.getId_client());


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
}
