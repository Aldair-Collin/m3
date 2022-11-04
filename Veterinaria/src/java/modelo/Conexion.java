/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;
import java.sql.*;
import java.util.Vector;
import veterinaria.Cliente;
/**
 *
 * @author ILP
 */
public class Conexion {
    
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

     public Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/veterinaria", "root", "");
            System.out.println("Se conecto correctamente la base de datos");
        } catch (Exception e) {

            System.out.println("Error no se conecto a la base de datos" + e);
        }
    }
    
    public Vector<Cliente> listaClientes(){
        Vector<Cliente> m = new Vector<Cliente>();
        try {
            ps=con.prepareStatement("select * from cliente");
            rs=ps.executeQuery();
            while (rs.next()) {
                Cliente cliente=new Cliente();
                cliente.setDni(rs.getInt(1));
                cliente.setNombre(rs.getString(2));
                cliente.setApellido_paterno(rs.getString(3));
                cliente.setApellido_materno(rs.getString(4));
                cliente.setTelefono(rs.getString(5));
                cliente.setCorreo(rs.getString(6));
                m.add(cliente);
            }
            System.out.println("ENTREGA CORRECTA DE CLIENTES");
        } catch (Exception e) {
            System.out.println("ERROR EN LA ENTREGA DE CLIENTES");
        }
        return m;
        
    }
    
   

}
