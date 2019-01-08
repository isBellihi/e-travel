package web.Controlleur.auth;

import metier.ClientDao;
import metier.DAO;
import web.Model.Client;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ServletLogin")
public class ServletLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email=request.getParameter("email");
        String pass=request.getParameter("password");
        DAO<Client> clientDAO = new ClientDao();
        Client client = ((ClientDao) clientDAO).find(email,pass);
        if(client != null){
                HttpSession session = request.getSession();
                session.setAttribute("client", client);
                //response.sendRedirect("Admin.jsp");

            /*}else{
                HttpSession session = request.getSession();
                session.setAttribute("username", User);
                response.sendRedirect("Welcome.jsp");
            }*/
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);

        }else{
            request.setAttribute("message","email or passwd incorrect ");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
