package joelfiare.tpfinal.pronostico;

import lombok.Getter;
import lombok.Setter;
import java.util.HashMap;

@Getter
@Setter

public class Campeonato {
    private HashMap<Integer, Ronda> partidos;
    private final int totalRondas = 7;
    private HashMap<String, Equipo> Campeonato;

    Campeonato() {
        this.partidos = new HashMap<>();
        this.Campeonato = new HashMap<>();
    }

    public Equipo buscarEquipo(String equipoKey) {
        Equipo equipoBuscado;
        equipoBuscado = this.Campeonato.get(equipoKey);
        return equipoBuscado;
    }
}
