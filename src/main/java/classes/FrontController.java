package classes;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion = null;
        TicketDAO ticketDAO = null;

        try{
            ticketDAO = new TicketDAO();

        }catch (ClassNotFoundException e){
            System.out.println(e);
        }

        RequestDispatcher rd = null;
        accion = req.getParameter("accion");

        if(accion==null || accion.isEmpty()){
            rd = req.getRequestDispatcher("views/index.jsp");
        }

        else if (accion.equals("registrar")){
            rd = req.getRequestDispatcher("views/tickets.jsp");
        }

        rd.forward(req,resp);
    }


}
