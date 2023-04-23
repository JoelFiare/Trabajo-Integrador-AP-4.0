package joelfiare.tpfinal.pronostico;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@ToString

public class Ticket {
    private int partidoKey;
    private int equipoGanador;
    private ResultadoEnum pronostico;
}
