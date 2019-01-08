package metier;

import web.Model.Ville;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;


/**
 `id_ville`, `nom`, `region`, `description`SELECT * FROM `ville` WHERE 1
 **/

public class VilleDao extends DAO<Ville> {

    public VilleDao(){
        super();
    }

    private Ville extractVilleFromResultSet(ResultSet res){
        Ville ville = new Ville();
        try {
            ville.setId_ville(res.getInt("id_Ville"));
            ville.setNom(res.getString("nom"));
            ville.setRegion(res.getString("region"));
            ville.setDescription(res.getString("description"));
            return ville;
        }catch (Exception e){
            System.out.println(" error extractVilleFromResultSet : " + e.getMessage());
        }
        return null;
    }
    @Override
    public Set<Ville> find(String attribut,int id) {
        Set<Ville> set = new HashSet<>();
        try {
            Statement stm = connection.createStatement();
            ResultSet res = stm.executeQuery("select * from Ville where id_ville = " + id + ";");
            while (res.next()){
                set.add(extractVilleFromResultSet(res));
            }
            return set ;
        }catch (Exception e){
            System.out.println(" find ville by id failed : " + e.getMessage());
        }
        return null;
    }

    @Override
    public Set<Ville> getAll() {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ville");
            Set villes = new HashSet();
            while(rs.next())
            {
                Ville ville = extractVilleFromResultSet(rs);
                villes.add(ville);
            }
            return villes;
        } catch (Exception ex) {

        }
        return null;
    }


    @Override
    public boolean insert(Ville ville) {
        // `id_ville`, `nom`, `region`, `description`SELECT * FROM `ville` WHERE 1
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO ville" +
                    "(nom, region, description)" +
                    "VALUES (?, ?, ?)");
            ps.setString(1, ville.getNom());
            ps.setString(2, ville.getRegion());
            ps.setString(3, ville.getDescription());

            int i = ps.executeUpdate();
            if(i == 1) {
                return true;
            }
        } catch (Exception ex) {
        }
        return false;
    }

    @Override
    public boolean update(Ville ville) {
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE ville set nom =?" +
                    " , region = ? , description = ? where id_ville = ? ;");
            ps.setString(1, ville.getNom());
            ps.setString(2, ville.getRegion());
            ps.setString(3, ville.getDescription());
            ps.setInt(4, ville.getId_ville());

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
            int i = stmt.executeUpdate("DELETE FROM ville WHERE id_ville=" + id);
            if(i == 1) {
                return true;
            }
        } catch (Exception ex) {

        }
        return false;
    }
}
