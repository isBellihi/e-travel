package web.Controlleur;

import metier.*;
import web.Model.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

@WebServlet(name = "Reservation")
public class ReservationServlet extends HttpServlet {
    private int id_reseravation;
    private Double prixTotal ;
    private Excurssion excurssion ;
    private int client ;
    private Boolean confirme ;
    private Set<Message> messages ;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        excurssion = new ExcurssionDao().find("id_excurssion",
                Integer.parseInt(request.getParameter("excurssion"))).iterator().next();
        Set<Outil> outils = (excurssion.getOutils());
        //prixTotal = Integer.parseInt(request.getParameter("client"))*excurssion.getFrais();
        prixTotal = excurssion.getFrais();
        String[] optionsIds = request.getParameterValues("options");
        for (String optionValue : optionsIds){
            prixTotal += new OutilDao().find("id_outil" , Integer.parseInt(optionValue)).iterator().next().getPrixReservation();
        }

        Reservation reservation = new Reservation();
        reservation.setPrixTotal(prixTotal);
        reservation.setExcurssion(excurssion);
        reservation.setConfirme(false);
        reservation.setClient(new ClientDao().find("id_client",
                ((Client)request.getSession().getAttribute("client")).getId_client()).iterator().next());

        DAO<Reservation> reservationDAO = new ReservationDao();
        reservationDAO.insert(reservation);
        reservation.setId_reseravation(((ReservationDao) reservationDAO).getMaxId());
        Message message = new Message();
        message.setMessage("Nous avons reçu votre commande, nous vous répondrons dans les meilleurs délais.");
        message.setExpediteur(true);
        message.setResrvavtion(reservation);
        new MessageDao().insert(message);
        response.sendRedirect("/e-travel/dashboard");
        //request.getRequestDispatcher("").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
