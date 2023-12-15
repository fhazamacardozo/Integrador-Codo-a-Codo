package clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class TicketDAO {

    Connection connection = null;

    public TicketDAO() throws ClassNotFoundException {
        Conexion con = new Conexion();
        try {
            connection = con.getConecction();
        } catch (ClassNotFoundException e) {
            System.out.println(e);
        }
    }

    /*LISTAR TICKETS*/

    public List<Ticket> listarTickets() {

        List<Ticket> tickets = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;

        try {
            ps = connection.prepareStatement("select * from tickets");
            rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String mail = rs.getString("mail");
                int cantidad = rs.getInt("cantidad");
                int tipo_ticket = rs.getInt("tipo_ticket");
                float total_facturado = rs.getFloat("total_facturado");

                Ticket ticket = new Ticket(id, nombre, apellido, mail, cantidad, tipo_ticket, total_facturado);
                tickets.add(ticket);

            }
            return tickets;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }
    }

    /*GUARDAR TICKET*/

    public boolean guardarTicket(Ticket ticket) throws SQLException {

        PreparedStatement ps;
        /*CONSULTAR AL PROFE*/
        double total;

        try {
            ps = connection.prepareStatement("insert into (nombre,apellido,mail,cantidad,tipo_ticket,total_facturado) " +
                    "values (?,?,?,?,?,?)");

            ps.setString(1, ticket.getNombre());
            ps.setString(2, ticket.getApellido());
            ps.setString(3, ticket.getMail());
            ps.setInt(4, ticket.getCantidad());
            ps.setInt(5, ticket.getTipo_ticket());
            ps.setFloat(6, ticket.getTotal_facturado());

            ps.execute();

            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean borrarTicket(int id) throws SQLException {

        PreparedStatement ps;
        try {
            ps = connection.prepareStatement("delete from tickets where id = ?");
            ps.setInt(1,id);
            ps.execute();

            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

}
