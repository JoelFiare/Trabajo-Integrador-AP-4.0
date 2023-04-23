package joelfiare.tpfinal.pronostico;

import lombok.Getter;
import lombok.Setter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

@Setter
@Getter

public class Pronostico {
    private HashMap<Integer, Apostador> apostadores;
    private final int puntosExtra = 3;
    private int puntajeMasAlto;
    private int idGanador;

    public Pronostico() {
        this.apostadores = new HashMap<>();
        this.idGanador = 0;
        this.puntajeMasAlto = 0;
    }

    public void mostrarAciertos(Campeonato campeonato) {
        for (Apostador ap : this.apostadores.values()) {
            for (Ronda r : campeonato.getPartidos().values()) {
                int puntosPosibles = r.getUnaRondaHashMap().size();
                int aciertos = ap.contarAciertos(r);

                if (aciertos == puntosPosibles) {
                    aciertos += this.puntosExtra;
                    System.out.println("* " + ap.getNombre() + " recibió " + this.puntosExtra + " puntos extra por aciertos de ronda completa.");
                }
                ap.puntosPorRonda(aciertos);
            }

            if (ap.getPuntosTotales() > this.puntajeMasAlto) {
                this.puntajeMasAlto = ap.getPuntosTotales();
                this.idGanador = ap.getDni();
            }
        }
    }

    public void anunciarGanador(){
        Apostador ganador = apostadores.get(idGanador);
        System.out.println("* El Ganador es " + ganador.getNombre() + ", con un total de " + ganador.getPuntosTotales() + " puntos. \n");
    }

    public void tablaDePosiciones() {
        ArrayList<Apostador> ordenGanador = new ArrayList<>(apostadores.values());
        Collections.sort(ordenGanador);
        System.out.println("Tabla final de posiciones:");
        int i = 1;

        for (Apostador apostadores : ordenGanador) {
            System.out.println("            " + i + ".    " + apostadores.getPuntosTotales() + " puntos    " + apostadores.getNombre());
            i++;
        }
    }
}
