package web.Controlleur;

import metier.CoVoiturageDao;
import metier.DAO;
import metier.VilleDao;
import web.Model.CoVoiturage;
import web.Model.Ville;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Set;

public class VoyageServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request,
                          javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
//        PrintWriter pw = response.getWriter();

        CoVoiturage voyage = new CoVoiturage();
        DAO<Ville> villeDAO = new VilleDao();
        voyage.setDescription(request.getParameter("description"));

        voyage.setDateArivee(Timestamp.valueOf(request.getParameter("dateArrivee")));
        voyage.setDateDepart(Timestamp.valueOf(request.getParameter("dateDepart")));
        voyage.setVilleArivee(villeDAO.find("id_ville",Integer.parseInt(request.getParameter("villeArrivee"))).iterator().next());
        voyage.setVilleDepart(villeDAO.find("id_ville",Integer.parseInt(request.getParameter("villeDepart"))).iterator().next());
        voyage.setMarqueVoiture(request.getParameter("marqueVoiture"));
        voyage.setNbrPlace(Integer.parseInt(request.getParameter("nbrPlace")));
        voyage.setFrais(Double.parseDouble(request.getParameter("frais")));
        DAO<CoVoiturage> voyageDao = new CoVoiturageDao();
        //DAO<Voyage> voyageDao = new VoyageDao();
        boolean yes = voyageDao.insert(voyage);
        if (yes) {
            request.setAttribute("add", true);
            //pw.println("<div class=\"alert alert-success\">Success! l'insertion est bien passé</div>\n");
        } else {
            request.setAttribute("add", false);
            //pw.println("<div class=\"alert alert-warning\">Warning ! erreur.</div>\n");
        }

        DAO<CoVoiturage> voyageDAO = new CoVoiturageDao();
        Set<CoVoiturage> voyages = voyageDAO.getAll();
        request.setAttribute("voyages", voyages);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/list.jsp");
        dispatcher.forward(request, response);
        }

        protected void doGet (javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse
        response) throws javax.servlet.ServletException, IOException {

            //Statement stm = connection.createStatement();
            //String str = "select * from voyages" ;
            //ResultSet voyages = stm.executeQuery(str);
            DAO<CoVoiturage> voyageDAO = new CoVoiturageDao();
            Set<CoVoiturage> voyages = voyageDAO.getAll();
            request.setAttribute("voyages", voyages);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/list.jsp");
            dispatcher.forward(request, response);

        }
}
