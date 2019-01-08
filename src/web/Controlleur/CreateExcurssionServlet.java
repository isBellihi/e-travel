package web.Controlleur;

import metier.DAO;
import metier.EscaleDao;
import metier.ExcurssionDao;
import metier.VilleDao;
import web.Model.Client;
import web.Model.Escale;
import web.Model.Excurssion;
import web.Model.Ville;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@WebServlet(name = "CreateExcurssionServlet")
public class CreateExcurssionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DAO<Excurssion> excurssionDAO = new ExcurssionDao();
        Excurssion excurssion = new Excurssion();
        excurssion.setTitre(request.getParameter("titre"));
        excurssion.setDescription(request.getParameter("description"));
        excurssion.setVilleArivee(
                (new VilleDao().find("id_ville",Integer.parseInt(request.getParameter("villeArrivee"))).iterator().next())
        );
        excurssion.setVilleDepart(
                (new VilleDao().find("id_ville",Integer.parseInt(request.getParameter("villeDepart"))).iterator().next())
        );
        excurssion.setFrais(Double.parseDouble(request.getParameter("prix")));
        excurssion.setDateArivee(Timestamp.valueOf(request.getParameter("dateArrivee").replace("T"," ") + ":00"));
        excurssion.setDateDepart(Timestamp.valueOf(request.getParameter("dateDepart").replace("T"," ")+ ":00"));
        Client client = (Client)request.getSession().getAttribute("client");
        client.addExcurssion(excurssion);
        request.getSession().invalidate();
        request.getSession().setAttribute("client",client);
        excurssionDAO.insert(excurssion);
        String names[] = request.getParameterValues("nom");
        String villeEscale[] = request.getParameterValues("villeEscale");
        String entree[] = request.getParameterValues("dateEntree") ;
        String sorties[] = request.getParameterValues("dateSortie") ;
        List<Timestamp> dateEntree = new ArrayList<>();// = new Timestamp[request.getParameterValues("dateEntree").length];
        List<Timestamp> dateSortie = new ArrayList<>();; // new Timestamp[request.getParameterValues("dateSortie").length];
        for (int i= 0;i<entree.length;i++){
            dateEntree.add(Timestamp.valueOf(entree[i].replace("T" , " ") + ":00")) ;
            dateSortie.add(Timestamp.valueOf(sorties[i].replace("T" , " ")+ ":00")) ;
        }
        excurssion.setId_excurssion(new ExcurssionDao().getMaxId());
        for(int i=0;i<names.length;i++){
            Escale escale = new Escale();
            escale.setDateEntree(dateEntree.get(i));
            escale.setNom(names[i]);
            escale.setDateSortie(dateSortie.get(i));
            escale.setVilleEscale(new VilleDao().find("id_ville",Integer.parseInt(villeEscale[i])).iterator().next());
            excurssion.addEscale(escale);
            new EscaleDao().insert(escale);
        }
        request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO<Ville> villeDAO = new VilleDao();
        Set<Ville> villes = villeDAO.getAll();
        request.setAttribute("villes", villes);
        request.getRequestDispatcher("/new.jsp").forward(request, response);
    }
}
