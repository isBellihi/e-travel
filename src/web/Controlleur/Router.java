package web.Controlleur;

import metier.*;
import web.Controlleur.auth.ServletLogin;
import web.Model.*;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashSet;
import java.util.NoSuchElementException;
import java.util.Set;

@WebFilter
public class Router implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if (request instanceof HttpServletRequest) {
            HttpServletRequest httpServletRequest = ((HttpServletRequest)request);
            String requestURI = httpServletRequest.getRequestURI();
            String contextPath = httpServletRequest.getContextPath();
            if(requestURI.matches(".*(css|jpg|png|gif|js|jsp|html)")){
                chain.doFilter(request, response);
                return;
            }
            if (requestURI.equals("/e-travel/dashboard")){
                    DAO<Client> clientDAO = new ClientDao();
                    Client client = (Client) ((HttpServletRequest) request).getSession().getAttribute("client");
                    Set<Excurssion> excurssions = ((ClientDao) clientDAO).getExcurssions(client);
                    Set<Reservation> reservations = ((ClientDao) clientDAO).getReservations(client);
                    Set<Message> messages = new HashSet<>();
                    for (Excurssion excurssion : excurssions) {
                        reservations.addAll(new ExcurssionDao().getReservations(excurssion));
                    }
                    for (Reservation reservation : reservations) {
                        Set<Message> msgs = new ReservationDao().getMessages(reservation);
                        if(msgs != null) messages.addAll(msgs);
                    }
                    request.setAttribute("reservations",reservations);
                    request.setAttribute("messages", messages);
                    request.getServletContext().getRequestDispatcher(
                            "/dashboard.jsp").forward(request, response);

            }else if(requestURI.equals("/e-travel/excurssions/index")){
                if(((HttpServletRequest) request).getSession().getAttribute("client") == null){
                    request.getServletContext().getRequestDispatcher(
                            "/login.jsp").forward(request, response);
                }else{
                    Client client = (Client)((HttpServletRequest) request).getSession().getAttribute("client");
                    request.setAttribute("excurssions", new ClientDao().getExcurssions(client));
                    request.getServletContext().getRequestDispatcher(
                            "/listexcurssions.jsp").forward(request, response);
                }
            }else if(requestURI.matches("/e-travel/show/[0-9]*")){
                int indice  = Integer.parseInt(requestURI.split("/")[requestURI.split("/").length - 1]);
                ExcurssionDao excurssionDao = new ExcurssionDao();
                Excurssion excurssion ;
                try{
                    excurssion = excurssionDao.find("id_excurssion",indice).iterator().next();
                    Set<Excurssion> excurssions = excurssionDao.getAll();
                    excurssions.remove(excurssion);
                    request.setAttribute("excurssions",excurssions);
                    DAO<Outil> outilDao = new OutilDao();
                    excurssion.setOutils(outilDao.find("id_excurssion",excurssion.getId_excurssion()));
                    request.setAttribute("excurssion",excurssion);
                    request.getServletContext().getRequestDispatcher(
                            "/views/excurssion/show.jsp").forward(request, response);
                }catch (NoSuchElementException e){
                    request.getServletContext().getRequestDispatcher(
                            "/views/errors/404.jsp").forward(request, response);
                }

            } else if (requestURI.equals("/e-travel/signin")) {
                if (((HttpServletRequest) request).getMethod().equalsIgnoreCase("GET")) {
                    request.getServletContext().getRequestDispatcher(
                            "/login.jsp").forward(request, response);
                } else {
                    chain.doFilter(request, response);
                }
            }
            else {
             //   request.getServletContext().getRequestDispatcher(
               //         "/index.jsp").forward(request,response);
                chain.doFilter(request,response);

            }

        }

    }

    /*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //String path1 = request.getContextPath();
        //String path2 = request.getPathTranslated();
        String path3 = request.getRequestURI();
        //String path4 = request.getServletPath();
        System.out.println(path3);
        if(path3.equals("/e-travel/dashboard")){
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
        }
        else if(path3.equals("/e-travel/dashboard.jsp")){
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
        }
    }*/
}
