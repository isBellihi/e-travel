package web.Controlleur;

import metier.DAO;
import metier.VilleDao;
import web.Model.Ville;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

@WebServlet(name = "CreateExcurssionServlet")
public class CreateExcurssionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO<Ville> villeDAO = new VilleDao();
        Set<Ville> villes = villeDAO.getAll();
        request.setAttribute("villes", villes);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/excurssion/create.jsp");
        dispatcher.forward(request, response);
    }
}
