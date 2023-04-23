package joelfiare.tpfinal.pronostico;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;

@Setter
@Getter
@AllArgsConstructor

public class Ronda {
    private int numeroRonda;
    private HashMap<Integer, Partido> unaRondaHashMap;

    public Ronda(int numeroRonda) {
        this.numeroRonda = numeroRonda;
        this.unaRondaHashMap = new HashMap<>();
    }
}

