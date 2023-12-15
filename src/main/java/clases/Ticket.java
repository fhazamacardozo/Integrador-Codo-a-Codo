package clases;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor

public class Ticket {

    private int id;
    private String nombre;
    private String apellido;
    private String mail;
    private int cantidad;
    private int tipo_ticket;
    private float total_facturado;
}
