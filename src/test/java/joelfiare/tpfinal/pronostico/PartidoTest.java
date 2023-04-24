package joelfiare.tpfinal.pronostico;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class PartidoTest {

    @Test
    public void testResultado() {
        Equipo equipo1 = new Equipo("Equipo 1");
        Equipo equipo2 = new Equipo("Equipo 2");
        Partido partido1 = new Partido(1, equipo1, 2, 1, equipo2);
        Partido partido2 = new Partido(2, equipo1, 1, 1, equipo2);
        Partido partido3 = new Partido(3, equipo1, 0, 3, equipo2);

        Assertions.assertEquals(ResultadoEnum.GANADOR, partido1.resultado());
        Assertions.assertEquals(ResultadoEnum.EMPATE, partido2.resultado());
        Assertions.assertEquals(ResultadoEnum.PERDEDOR, partido3.resultado());
    }
}