package metier;

import web.Model.CoVoiturage;
import web.Model.Escale;
import web.Model.Escale;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

public class EscaleDao extends DAO<Escale>{

    public EscaleDao(){
        super();
    }


    private Escale extractEscaleFromResultSet(ResultSet res) {
        Escale escale = new Escale();
//	id	id_voyage	id_ville	nom	dateArrivee	dateDepart
        try {
            escale.setNom(res.getString("nom"));
            escale.setExcurssion(new ExcurssionDao().find("id_excurssion",res.getInt("id_excurssion")).iterator().next());
            escale.setId_escale(res.getInt("id_escale"));
            escale.setVilleEscale(new VilleDao().find("id_ville",res.getInt("id_ville")).iterator().next());
            escale.setDateSortie(res.getTimestamp("dateDepart"));
            escale.setDateEntree(res.getTimestamp("dateArrivee"));
            return escale;
        }catch (Exception e){
            System.out.println("error extractEscaleFromResultSet: \n" + e.getMessage());
        }
        return null;
    }

    @Override
    public Set<Escale> find(String attribut,int value) {
        Set<Escale> set = new HashSet<>();
        try {
            Statement stm = connection.createStatement();
            ResultSet res = stm.executeQuery("select * from escale where  " + attribut + " = " + value + ";");
            while (res.next()){
                set.add(extractEscaleFromResultSet(res));
            }
                return set;
        }catch (Exception e){
            return null;
        }
    }
    @Override
    public Set<Escale> getAll() {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Escale ;");
            Set escales = new HashSet();
            while(rs.next())
            {
                Escale escale = extractEscaleFromResultSet(rs);
                escales.add(escale);
            }
            return escales;
        } catch (Exception ex) {
            System.out.println("error : " + ex.getMessage());
        }
        return null;
    }

    private int getMAxId(){
        int a = 0;
        try {
            Statement stm = connection.createStatement();
            String sql = "select max(id_escale) from escale ;" ;
            ResultSet res = stm.executeQuery(sql);
            if(res.next()){
                a = res.getInt(1);
            }
        }catch (Exception e){

        }

        return a ;
    }

    @Override
    public boolean insert(Escale escale) {
        /**
         //	id	id_voyage	id_ville	nom	dateArrivee	dateDepart
         **/
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO escale" +
                    "(nom,id_excurssion,id_ville,dateArrivee,dateDepart ) " +
                    "VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, escale.getNom());
            ps.setInt(2, escale.getExcurssion().getId_excurssion() );
            ps.setInt(3, escale.getVilleEscale().getId_ville());
            ps.setTimestamp(4, escale.getDateEntree());
            ps.setTimestamp(5, escale.getDateSortie());


            int i = ps.executeUpdate();
            if(i > 0) {
                return true;
            }else {
            }
        } catch (Exception ex) {
            System.out.println("error insert escale : " + ex.getMessage());
        }
        return false;
    }

    @Override
    public boolean update(Escale escale) {
        /**
         * //	id	id_voyage	id_ville	nom	dateArrivee	dateDepart
         **/
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE escale set nom = ? ," +
                    " id_excurssion = ? ,id_ville = ?, dateArrivee = ? , " +
                    "dateDepart = ? where id_escale = ? ;");


            ps.setString(1, escale.getNom());
            ps.setInt(2, escale.getExcurssion().getId_excurssion() );
            ps.setInt(3, escale.getVilleEscale().getId_ville());
            ps.setTimestamp(4, escale.getDateEntree());
            ps.setTimestamp(5, escale.getDateSortie());
            ps.setInt(6,escale.getId_escale());

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
            int i = stmt.executeUpdate("DELETE FROM escale WHERE id_escale=" + id);
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
            String sql = "select max(id_escale) from escale ;" ;
            ResultSet res = stm.executeQuery(sql);
            if(res.next()){
                a = res.getInt(1);
            }
        }catch (Exception e){

        }

        return a ;
    }

}
