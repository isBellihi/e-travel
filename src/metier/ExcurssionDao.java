package metier;

import web.Model.*;

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
            excurssion.setId_excurssion(res.getInt("id_excurssion"));
            excurssion.setClient(new ClientDao().find("id_client",res.getInt("id_client")).iterator().next());
            excurssion.setFrais(res.getDouble("frais"));
            excurssion.setNbrPlace(res.getInt("nbrPlace"));
            excurssion.setTitre(res.getString("titre"));
            excurssion.setVilleDepart(new VilleDao().find("id_ville",res.getInt("id_ville_depart")).iterator().next());
            excurssion.setVilleArivee(new VilleDao().find("id_ville",res.getInt("id_ville_arrivee")).iterator().next());
            excurssion.setDateDepart(res.getTimestamp("dateDepart"));
            excurssion.setDateArivee(res.getTimestamp("dateArrivee"));
            excurssion.setDescription(res.getString("description"));
            excurssion.setFiche(res.getString("fiche"));
            excurssion.setRegelement(res.getString("regelement"));
            return excurssion;
        }catch (Exception e){
            System.out.println("error extractExcurssionFromResultSet: " + e.getMessage());
        }
        return null;
    }

    @Override
    public Set<Excurssion> find(String attribut,int value) {
        Set<Excurssion> set = new HashSet<>();
        try {
            Statement stm = connection.createStatement();
            ResultSet res = stm.executeQuery("select * from Excurssion where " + attribut +" = " +value + ";");
            while (res.next()){
                set.add(extractExcurssionFromResultSet(res));
            }
            return set;
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
                    ",id_ville_arrivee,id_ville_depart,fiche, id_client, regelement ) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setInt(1, excurssion.getNbrPlace());
            ps.setDouble(2, excurssion.getFrais() );
            ps.setString(3, excurssion.getTitre());
            ps.setTimestamp(4, excurssion.getDateDepart());
            ps.setTimestamp(5, excurssion.getDateArrivee());
            ps.setString(6,excurssion.getDescription());
            ps.setInt(7,excurssion.getVilleArivee().getId_ville());
            ps.setInt(8,excurssion.getVilleDepart().getId_ville());
            ps.setString(9,excurssion.getFiche());
            ps.setInt(10,excurssion.getClient().getId_client());
            ps.setString(11,excurssion.getRegelement());

            int i = ps.executeUpdate();
            if(i > 0) {
                /*DAO<Outil> outilDAO = new OutilDao();
                for (Outil outil : excurssion.getOutils()){
                    outilDAO.insert(outil);
                }*/
                return true;
            }else {
            }
        } catch (Exception ex) {
            System.out.println("error INSERT EXCURSSION: " + ex);
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
                    ",id_ville_arrivee = ? ,id_ville_depart = ? ,fiche = ?" +
                    ", id_client = ? , regelement = ?  where id_excurssion = ? ;");


            ps.setInt(1, excurssion.getNbrPlace());
            ps.setDouble(2, excurssion.getFrais() );
            ps.setString(3, excurssion.getTitre());
            ps.setTimestamp(4, excurssion.getDateDepart());
            ps.setTimestamp(5, excurssion.getDateArrivee());
            ps.setString(6,excurssion.getDescription());
            ps.setInt(7,excurssion.getVilleArivee().getId_ville());
            ps.setInt(8,excurssion.getVilleDepart().getId_ville());
            ps.setString(9,excurssion.getFiche());
            ps.setInt(10,excurssion.getClient().getId_client());
            ps.setString(11,excurssion.getRegelement());
            ps.setInt(12,excurssion.getId_excurssion());

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

    public int getMaxId(){
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
    public Set<Escale> getEscales(Excurssion excurssion){
        Set<Escale> set = new HashSet();
        DAO<Escale> escaleDAO = new EscaleDao();
        set = escaleDAO.find("id_excurssion",excurssion.getId_excurssion());
        for (Escale esclae :set){
            excurssion.addEscale(esclae);
        }
        return set ;
    }

    public Set<Outil> getOutils(Excurssion excurssion){
        Set<Outil> set = new HashSet<>();
        DAO<Outil> outilDAO = new OutilDao();
        set = outilDAO.find("id_excurssion" , excurssion.getId_excurssion());
        for (Outil outil : set){
            excurssion.addOutil(outil);
        }
        return set ;
    }

    public Set<Reservation> getReservations(Excurssion excurssion){
        Set<Reservation> set = new HashSet<>();
        DAO<Reservation> reservationDao = new ReservationDao();
        set = reservationDao.find("id_excurssion" , excurssion.getId_excurssion());
        for (Reservation reservation : set){
            excurssion.addReservation(reservation);
        }
        return set ;
    }
}
