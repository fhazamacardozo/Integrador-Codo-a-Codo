package clases;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String accion = null;
		TicketDAO ticketDAO = null;

		try {
			ticketDAO = new TicketDAO();

		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}

		RequestDispatcher rd = null;
		accion = req.getParameter("accion");

		if (accion == null || accion.isEmpty()) {
			rd = req.getRequestDispatcher("vistas/index.jsp");
		} else if (accion.equals("registrar")) {
			rd = req.getRequestDispatcher("vistas/tickets.jsp");
		} else if (accion.equals("backoffice")) {
			rd = req.getRequestDispatcher("vistas/backoffice.jsp");
		} else if (accion.equals("volver")) {
			rd = req.getRequestDispatcher("vistas/index.jsp");
		} else if (accion.equals("insertar")) {
			String nombre = req.getParameter("nombre");
			String apellido = req.getParameter("apellido");
			String mail = req.getParameter("mail");
			int cantidad = Integer.parseInt(req.getParameter("cantidad"));
			int categoria = Integer.parseInt(req.getParameter("tipo_ticket"));
			int total = 0;
			if (categoria == 1) {
				total = (int)(200 * 0.2) * cantidad;
			} else if (categoria == 2) {
	            total = (int) ((200 * 0.5) * cantidad);
			} else if (categoria == 3) {
	            total = (int) ((200 * 0.85) * cantidad);
			}

			Ticket ticket = new Ticket(0, nombre, apellido, mail, cantidad, categoria, total);
			try {
				ticketDAO.guardarTicket(ticket);
			} catch (SQLException e) {
				e.printStackTrace();
			}

			rd = req.getRequestDispatcher("vistas/index.jsp");
		}

		else if (accion.equals("eliminar")) {
			int id = Integer.parseInt(req.getParameter("id"));
			try {
				ticketDAO.borrarTicket(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			rd = req.getRequestDispatcher("vistas/backoffice.jsp");
		}

		rd.forward(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
