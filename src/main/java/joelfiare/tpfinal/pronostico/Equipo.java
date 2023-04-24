package joelfiare.tpfinal.pronostico;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@ToString

public class Equipo {
    private String nombreEquipo;
    private int partidosJugados;

    public Equipo(String nombreEquipo, int partidosJugados) {
        this.nombreEquipo = nombreEquipo;
        this.partidosJugados = partidosJugados;
    }

    public Equipo(String nombreEquipo) {
        this.nombreEquipo = nombreEquipo;
    }
}

