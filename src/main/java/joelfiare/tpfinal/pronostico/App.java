package joelfiare.tpfinal.pronostico;

import java.sql.SQLException;

public class App {
    public static void main(String[] args) throws SQLException {
        Campeonato campeonato = new Campeonato();
        Pronostico pronosticos = new Pronostico();
        Config con = new Config();

        Conexion.cargarApostadores(pronosticos.getApostadores());
        Conexion.cargarEquipos(campeonato.getCampeonato());
        Conexion.cargarPartidos(campeonato);
        Conexion.cargarPronosticos(pronosticos.getApostadores());
        pronosticos.mostrarAciertos(campeonato);
        pronosticos.anunciarGanador();
        pronosticos.tablaDePosiciones();
    }
}