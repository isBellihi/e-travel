package metier;

import web.Model.Ville;
import web.Model.Voyage;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Set;

public class VoyageDao extends DAO<Voyage> {
    private static DAO<Ville> villedao ;
    /**
     SELECT * FROM voyages WHERE 1id_voyage, dateDepart, dateArrivee, description, id_ville_arrivee, id_ville_depart
     **/
    public VoyageDao(){
        super();
        villedao = new VilleDao();
    }
    private Voyage extractVoyageFromResultSet(ResultSet res) {
        Voyage voyage = new Voyage();

        try {
            voyage.setId_voyage(res.getInt("id_voyage"));
            voyage.setDateDepart(res.getTimestamp("dateDepart"));
            voyage.setDateArivee(res.getTimestamp("dateArrivee"));
            voyage.setDescription(res.getString("description"));
            voyage.setVilleArivee(villedao.find("id_ville",res.getInt("id_ville_arrivee")).iterator().next());
            voyage.setVilleDepart(villedao.find("id_ville",res.getInt("id_ville_depart")).iterator().next());
            return voyage;
        }catch (Exception e){
            return null;
        }
    }
    
    @Override
    public Set<Voyage> find(String attribut,int value) {
        Set<Voyage> set = new HashSet<>();
        try {
            Statement stm = connection.createStatement();
            ResultSet res = stm.executeQuery("select * from Voyages where " + attribut +" = " +value + ";");
            while (res.next()){
                set.add(extractVoyageFromResultSet(res));
            }
            return set;
        }catch (Exception e){
            return null;
        }
    }
    @Override
    public Set<Voyage> getAll() {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM voyages ;");
            Set voyages = new HashSet();
            while(rs.next())
            {
                Voyage voyage = extractVoyageFromResultSet(rs);
                voyages.add(voyage);
            }
            return voyages;
        } catch (Exception ex) {

            }
        return null;
    }

    @Override
    public boolean insert(Voyage voyage) {
//     SELECT * FROM voyages WHERE 1id_voyage, dateDepart, dateArrivee, description, id_ville_arrivee, id_ville_depart
        try {

            PreparedStatement ps = connection.prepareStatement("INSERT INTO voyages" +
                    "(dateDepart, dateArrivee, description, id_ville_arrivee, id_ville_depart) " +
                    "VALUES (?, ?, ?,?,?)");
            ps.setTimestamp(1, voyage.getDateDepart());
            ps.setTimestamp(2, voyage.getDateArrivee() );
            ps.setString(3, voyage.getDescription());
            ps.setInt(4, voyage.getVilleArivee().getId_ville());
            ps.setInt(5, voyage.getVilleDepart().getId_ville());
            int i = ps.executeUpdate();
            if(i > 0) {
                return true;
            }else {
            }
        } catch (Exception ex) {
        }
        return false;
    }

    @Override
    public boolean update(Voyage voyage) {
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE voyages set dateDepart =?" +
                    " , dateArrivee = ? , description = ? , id_ville_arrivee = ? , " +
                    " id_ville_depart = ? where id_voyage = ? ;");


            ps.setTimestamp(1, voyage.getDateDepart());
            ps.setTimestamp(2, voyage.getDateArrivee());
            ps.setString(3, voyage.getDescription());
            ps.setInt(4, voyage.getVilleArivee().getId_ville());
            ps.setInt(5, voyage.getVilleDepart().getId_ville());
            ps.setInt(6, voyage.getId_voyage());


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
            int i = stmt.executeUpdate("DELETE FROM voyages WHERE id_voyage=" + id);
            if(i == 1) {
                return true;
            }
        } catch (Exception ex) {

        }
        return false;
    }
}
