package web.Controlleur;

import metier.ExcurssionDao;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import web.Model.Excurssion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "JSONExcursion")
public class JSONExcursion extends HttpServlet {

    private static final long serialVersionUID = 1L;
    public static int[] array = new int[4];
    Excurssion excurssion = new Excurssion();
    int tries = 0;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        System.out.println("mochkiil hnaaaa 1");
        List excursions = new LinkedList<Excurssion>();
        //sampleData= here you can get data from database

        //writing data to json
        response.setContentType("application/json;charset=utf-8");

        JSONObject json = new JSONObject();
        JSONArray array = new JSONArray();
        JSONObject jsonData =  new JSONObject();
        excursions.addAll(new ExcurssionDao().getAll());
        jsonData.put("arrayData", excursions);
        array.add(jsonData);

        json.put("jsonArray", array);

        PrintWriter pw = response.getWriter();
        pw.print(json.toString());
        pw.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("mochkiil hnaaaa 11");
        List excursions = new LinkedList<Excurssion>();
        //sampleData= here you can get data from database

        //writing data to json
        response.setContentType("application/json;charset=utf-8");

        JSONObject json = new JSONObject();
        JSONArray array = new JSONArray();
        JSONObject jsonData =  new JSONObject();
        excursions.addAll(new ExcurssionDao().getAll());
        jsonData.put("arrayData", excursions);
        array.add(jsonData);

        json.put("jsonArray", array);

        PrintWriter pw = response.getWriter();
        pw.print(json.toString());
        pw.close();
    }
}
