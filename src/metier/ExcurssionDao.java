package metier;

import web.Model.CoVoiturage;
import web.Model.Excurssion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

public class ExcurssionDao extends DAO<Excurssion>{

    public ExcurssionDao(){
        super();
    }


    private Excurssion extractExcurssionFromResultSet(ResultSet res) {
        Excurssion excurssion = new Excurssion();

        try {
            excurssion.setId_excurssion(res.getInt("id_coVoiturage"));
            excurssion.setFrais(res.getDouble("frais"));
            excurssion.setNbrPlace(res.getInt("nbrPlace"));
            excurssion.setTitre(res.getString("titre"));
            excurssion.setVilleDepart(new VilleDao().find(res.getInt("id_ville_depart")));
            excurssion.setVilleArivee(new VilleDao().find(res.getInt("id_ville_arrivee")));
            excurssion.setDateDepart(res.getString("dateDepart"));
            excurssion.setDateArivee(res.getString("dateArrivee"));
            excurssion.setDescription(res.getString("description"));
            excurssion.setFiche(res.getString("fiche"));

            return excurssion;
        }catch (Exception e){
            System.out.println("error extractExcurssionFromResultSet: \n" + e.getMessage());
        }
        return null;
    }

    @Override
    public Excurssion find(int id) {
        try {
            Statement stm = connection.createStatement();
            ResultSet res = stm.executeQuery("select * from Excurssion where id_Excurssion = " + id + ";");
            if(res.next()){
                return extractExcurssionFromResultSet(res);
            }else {
                return null;
            }
        }catch (Exception e){
            return null;
        }
    }
    @Override
    public Set<Excurssion> getAll() {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Excurssion ;");
            Set excurssions = new HashSet();
            while(rs.next())
            {
                Excurssion excurssion = extractExcurssionFromResultSet(rs);
                excurssions.add(excurssion);
            }
            return excurssions;
        } catch (Exception ex) {
            System.out.println("error : " + ex.getMessage());
        }
        return null;
    }

    private int getMAxId(){
        int a = 0;
        try {
            Statement stm = connection.createStatement();
            String sql = "select max(id_excurssion) from excurssion ;" ;
            ResultSet res = stm.executeQuery(sql);
            if(res.next()){
                a = res.getInt(1);
            }
        }catch (Exception e){

        }

        return a ;
    }

    @Override
    public boolean insert(Excurssion excurssion) {
        /**
         * id_coVoiturage	nbrPlace	frais	marqueVoiture	id_voyage
         **/
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO excurssion" +
                    "(nbrPlace, frais, titre,dateDepart,dateArrivee,description" +
                    ",id_ville_arrivee,id_ville_depart,fiche ) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setInt(1, excurssion.getNbrPlace());
            ps.setDouble(2, excurssion.getFrais() );
            ps.setString(3, excurssion.getTitre());
            ps.setString(4, excurssion.getDateDepart());
            ps.setString(5, excurssion.getDateArivee());
            ps.setString(6,excurssion.getDescription());
            ps.setInt(7,excurssion.getVilleArivee().getId_ville());
            ps.setInt(8,excurssion.getVilleDepart().getId_ville());
            ps.setString(9,excurssion.getFiche());

            int i = ps.executeUpdate();
            if(i > 0) {
                return true;
            }else {
            }
        } catch (Exception ex) {
            System.out.println("error : " + ex.getMessage());
        }
        return false;
    }

    @Override
    public boolean update(Excurssion excurssion) {
        /**
         * id_coVoiturage	nbrPlace	frais	marqueVoiture	id_voyage
         **/
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE excurssion set nbrPlace =?" +
                    " , frais = ? , titre = ? ," +
                    "dateDepart = ? ,dateArrivee = ? ,description" +
                    ",id_ville_arrivee = ? ,id_ville_depart = ? ,fiche = ?  ;");


            ps.setInt(1, excurssion.getNbrPlace());
            ps.setDouble(2, excurssion.getFrais() );
            ps.setString(3, excurssion.getTitre());
            ps.setString(4, excurssion.getDateDepart());
            ps.setString(5, excurssion.getDateArivee());
            ps.setString(6,excurssion.getDescription());
            ps.setInt(7,excurssion.getVilleArivee().getId_ville());
            ps.setInt(8,excurssion.getVilleDepart().getId_ville());
            ps.setString(9,excurssion.getFiche());

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
            int i = stmt.executeUpdate("DELETE FROM excurssion WHERE id_excurssion=" + id);
            if(i == 1) {
                return true;
            }
        } catch (Exception ex) {

        }
        return false;
    }

}
