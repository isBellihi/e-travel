package web.Controlleur;

import metier.DAO;
import metier.VilleDao;
import metier.VoyageDao;
import web.Model.Ville;
import web.Model.Voyage;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

public class CreateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO<Ville> villeDAO = new VilleDao();
        Set<Ville> villes = villeDAO.getAll();
        request.setAttribute("villes", villes);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/create.jsp");
        dispatcher.forward(request, response);
    }
}
