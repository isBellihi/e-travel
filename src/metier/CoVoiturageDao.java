package metier;

import web.Model.CoVoiturage;
import web.Model.Ville;
import web.Model.Voyage;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

public class CoVoiturageDao extends DAO<CoVoiturage>{
         /**
         * id_coVoiturage	nbrPlace	frais	marqueVoiture	id_voyage
         **/
        public CoVoiturageDao(){
            super();
        }


        private CoVoiturage extractCoVoiturageFromResultSet(ResultSet res) {
            CoVoiturage coVoiturage = new CoVoiturage();

            try {
                coVoiturage.setId_coVoiturage(res.getInt("id_coVoiturage"));
                coVoiturage.setFrais(res.getDouble("frais"));
                coVoiturage.setNbrPlace(res.getInt("nbrPlace"));
                coVoiturage.setMarqueVoiture(res.getString("marqueVoiture"));
                coVoiturage.setVilleDepart(new VilleDao().find("id_ville",res.getInt("id_ville_depart")).iterator().next());
                coVoiturage.setVilleArivee(new VilleDao().find("id_ville",res.getInt("id_ville_arrivee")).iterator().next());
                coVoiturage.setDateDepart(res.getTimestamp("dateDepart"));
                coVoiturage.setDateArivee(res.getTimestamp("dateArrivee"));
                coVoiturage.setDescription(res.getString("description"));
                return coVoiturage;
            }catch (Exception e){
                System.out.println("error extractCoVoiturageFromResultSet: \n" + e.getMessage());
            }
            return null;
        }

        @Override
        public Set<CoVoiturage> find(String attribut,int id) {
            Set<CoVoiturage> set = new HashSet<>();
            try {
                Statement stm = connection.createStatement();
                ResultSet res = stm.executeQuery("select * from coVoiturage where id_coVoiturage = " + id + ";");
                while (res.next()){
                    set.add(extractCoVoiturageFromResultSet(res));
                }
                return set;
            }catch (Exception e){
                return null;
            }
        }
        @Override
        public Set<CoVoiturage> getAll() {
            try {
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM coVoiturage ;");
                Set coVoiturages = new HashSet();
                while(rs.next())
                {
                    CoVoiturage coVoiturage = extractCoVoiturageFromResultSet(rs);
                    coVoiturages.add(coVoiturage);
                }
                return coVoiturages;
            } catch (Exception ex) {
                System.out.println("error : " + ex.getMessage());
            }
            return null;
        }

        private int getMAxId(){
            int a = 0;
            try {
                Statement stm = connection.createStatement();
                String sql = "select max(id_voyage) from voyages ;" ;
                ResultSet res = stm.executeQuery(sql);
                if(res.next()){
                    a = res.getInt(1);
                }
            }catch (Exception e){

            }

            return a ;
        }

        @Override
        public boolean insert(CoVoiturage coVoiturage) {
            /**
             * id_coVoiturage	nbrPlace	frais	marqueVoiture	id_voyage
             **/
            try {
                PreparedStatement ps = connection.prepareStatement("INSERT INTO coVoiturage" +
                        "(nbrPlace, frais, marqueVoiture,dateDepart,dateArrivee,description" +
                        ",id_ville_arrivee,id_ville_depart ) " +
                        "VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
                ps.setInt(1, coVoiturage.getNbrPlace());
                ps.setDouble(2, coVoiturage.getFrais() );
                ps.setString(3, coVoiturage.getMarqueVoiture());
                ps.setTimestamp(4, coVoiturage.getDateDepart());
                ps.setTimestamp(5, coVoiturage.getDateArrivee());
                ps.setString(6,coVoiturage.getDescription());
                ps.setInt(7,coVoiturage.getVilleArivee().getId_ville());
                ps.setInt(8,coVoiturage.getVilleDepart().getId_ville());

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
        public boolean update(CoVoiturage coVoiturage) {
            /**
             * id_coVoiturage	nbrPlace	frais	marqueVoiture	id_voyage
             **/
            try {
                PreparedStatement ps = connection.prepareStatement("UPDATE coVoiturage set nbrPlace =?" +
                        " , frais = ? , marqueVoiture = ?  ;");


                ps.setInt(1, coVoiturage.getNbrPlace());
                ps.setDouble(2, coVoiturage.getFrais());
                ps.setString(3, coVoiturage.getMarqueVoiture());

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
                int i = stmt.executeUpdate("DELETE FROM coVoiturage WHERE id_coVoiturage=" + id);
                if(i == 1) {
                    return true;
                }
            } catch (Exception ex) {

            }
            return false;
        }

}
