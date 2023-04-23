package joelfiare.tpfinal.pronostico;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class Partido {
    private int UID;
    private Equipo equipo1;
    private int golesEquipoA;
    private int golesEquipoB;
    private Equipo equipo2;

    public ResultadoEnum resultado() {
        ResultadoEnum resultado = null;
        if (golesEquipoA > golesEquipoB) {
            resultado = ResultadoEnum.GANADOR;
        }
        if (golesEquipoA < golesEquipoB) {
            resultado = ResultadoEnum.PERDEDOR;
        }
        if (golesEquipoA == golesEquipoB) {
            resultado = ResultadoEnum.EMPATE;
        }
        return resultado;
    }

    @Override
    public String toString() {
        return "[Partido=" + UID + " " + equipo1.getNombreEquipo() + "=" + golesEquipoA + " - " + golesEquipoB + "=" + equipo2.getNombreEquipo() + "]";
    }
}

