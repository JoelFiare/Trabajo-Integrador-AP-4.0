package joelfiare.tpfinal.pronostico;

import lombok.Getter;
import lombok.Setter;
import java.util.HashMap;

@Getter
@Setter

public class Apostador implements Comparable<Apostador> {
    private HashMap<Integer, Ticket> apuestasTot;
    private int dni;
    private String nombre;
    private int puntosTotales;
    private final int puntosPorAcierto = 1;

    public Apostador(int dni, String nombre) {
        this.dni = dni;
        this.puntosTotales = 0;
        this.nombre = nombre;
        this.apuestasTot = new HashMap<>();
    }

    public int contarAciertos(Ronda r) {
        int aciertos = 0;
        for (Partido p : r.getUnaRondaHashMap().values()) {
            ResultadoEnum pronostico = this.apuestasTot.get(p.getUID()).getPronostico();
            ResultadoEnum resultado = p.resultado();
            if (pronostico.equals(resultado)) {
                aciertos += this.puntosPorAcierto;
            }
        }
        return aciertos;
    }

    @Override
    public String toString() {
        StringBuilder msj = new StringBuilder("Apostador= " + nombre + " " + dni + "\n");
        for (Ticket tk : this.apuestasTot.values()) {
            msj.append(tk.toString()).append("\n");
        }
        return msj.toString();
    }

    public void puntosPorRonda(int aciertos) {
        this.puntosTotales += aciertos;
    }

    @Override
    public int compareTo(Apostador ap) {
        String a = String.valueOf(this.puntosTotales);
        String b = String.valueOf(ap.getPuntosTotales());
        return b.compareTo(a);
    }
}