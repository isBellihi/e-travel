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
import java.sql.PreparedStatement;

@WebServlet(name = "ServletSignup")
public class ServletSignup extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException,ServletException {
        //email	passwd	prenom	nom	address	dateNaissance	NumTele
        String nom=request.getParameter("nom");
        String prenom=request.getParameter("prenom");
        String email =request.getParameter("email");
        String dateNaissance = request.getParameter("dateNaissance");
        //String address = request.getParameter("address");
        //String numTele =request.getParameter("NumTele");
        String passwd=request.getParameter("passwd");
        Client client = new Client();
        //client.setNumTele(numTele);
        client.setDateNaissance(dateNaissance);
        //client.setAddress(address);
        client.setPrenom(prenom);
        client.setEmail(email);
        client.setPasswd(passwd);
        client.setNom(nom);
        DAO<Client> clientDAO = new ClientDao();
        clientDAO.insert(client);
        client.setId_client(((ClientDao) clientDAO).getMaxId());
        HttpSession session = request.getSession();
        session.setAttribute("client", client);
        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }
}
