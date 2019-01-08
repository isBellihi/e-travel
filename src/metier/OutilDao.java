package metier;

import web.Model.CoVoiturage;
import web.Model.Outil;
import web.Model.Outil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

public class OutilDao extends DAO<Outil>{

    public OutilDao(){
        super();
    }


    private Outil extractOutilFromResultSet(ResultSet res) {
        Outil outil = new Outil();

        try {
            outil.setNom(res.getString("nom"));
            outil.setDescription(res.getString("description"));
            outil.setId_outil(res.getInt("id_outil"));
            //outil.setExcurssion();
            //id_outil	nom	description	prixReservation	quantiteDisp	id_excurssion
            outil.setPrixReservation(res.getDouble("prixReservation"));
            outil.setQuantiteDisp(res.getInt("quantiteDisp"));
            return outil;
        }catch (Exception e){
            System.out.println("error extractOutilFromResultSet: \n" + e.getMessage());
        }
        return null;
    }

    @Override
    public Set<Outil> find(String attribut,int id) {
        Set<Outil> set = new HashSet<>();
        try {
            Statement stm = connection.createStatement();
            ResultSet res = stm.executeQuery("select * from Outil where " + attribut + " = " + id + ";");
            while (res.next()){
                set.add(extractOutilFromResultSet(res));
            }
            return set ;
        }catch (Exception e){
            System.out.println(" find Outil by id failed : " + e.getMessage());
        }
        return null;
    }
    @Override
    public Set<Outil> getAll() {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Outil ;");
            Set outils = new HashSet();
            while(rs.next())
            {
                Outil outil = extractOutilFromResultSet(rs);
                outils.add(outil);
            }
            return outils;
        } catch (Exception ex) {
            System.out.println("error : " + ex.getMessage());
        }
        return null;
    }

    private int getMAxId(){
        int a = 0;
        try {
            Statement stm = connection.createStatement();
            String sql = "select max(id_outil) from outil ;" ;
            ResultSet res = stm.executeQuery(sql);
            if(res.next()){
                a = res.getInt(1);
            }
        }catch (Exception e){

        }

        return a ;
    }

    @Override
    public boolean insert(Outil outil) {
        /**
         * //id_outil	nom	description	prixReservation	quantiteDisp	id_excurssion
         **/
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO outil" +
                    "(nom,description,prixReservation,quantiteDisp,id_excurssion ) " +
                    "VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, outil.getNom());
            ps.setString(2, outil.getDescription() );
            ps.setDouble(3, outil.getPrixReservation());
            ps.setInt(4, outil.getQuantiteDisp());
            ps.setInt(5, outil.getExcurssion().getId_excurssion());


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
    public boolean update(Outil outil) {
        /**
         * //id_outil	nom	description	prixReservation	quantiteDisp	id_excurssion
         **/
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE outil set nom = ? ," +
                    " description = ? ,prixReservation = ?, quantiteDisp = ? , " +
                    "id_excurssion = ? where id_outil = ? ;");


            ps.setString(1, outil.getNom());
            ps.setString(2, outil.getDescription() );
            ps.setDouble(3, outil.getPrixReservation());
            ps.setInt(4, outil.getQuantiteDisp());
            ps.setInt(5, outil.getExcurssion().getId_excurssion());
            ps.setInt(6, outil.getId_outil());

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
            int i = stmt.executeUpdate("DELETE FROM outil WHERE id_outil=" + id);
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
            String sql = "select max(id_outil) from outil ;" ;
            ResultSet res = stm.executeQuery(sql);
            if(res.next()){
                a = res.getInt(1);
            }
        }catch (Exception e){

        }

        return a ;
    }

}
