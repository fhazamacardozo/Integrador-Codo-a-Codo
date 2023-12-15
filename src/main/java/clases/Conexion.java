package clases;

import java.sql.*;

public class Conexion {
    public String driver = "com.mysql.cj.jdbc.Driver";

    public Connection getConecction() throws ClassNotFoundException {
        Connection connection = null;

        try{
            Class.forName(driver);
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/final_project","root","");
        }catch (SQLException e){
            System.out.println(e);
        }

        return connection;
    }


    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Connection connection;
        Conexion con = new Conexion();
        connection = con.getConecction();

        PreparedStatement ps = connection.prepareStatement("select * from oradores");
        ResultSet rs = ps.executeQuery();
        
        while (rs.next()){
            String nombre = rs.getString("nombre");
            System.out.println("nombre = " + nombre);
        }

    }
}
