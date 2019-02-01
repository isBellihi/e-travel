package web.Controlleur;

import metier.ExcurssionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AllExcursions")
public class AllExcursions extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("excurssions",new ExcurssionDao().getAll());
        request.getServletContext().getRequestDispatcher(
                "/views/excurssion/all.jsp").forward(request, response);
    }
}
