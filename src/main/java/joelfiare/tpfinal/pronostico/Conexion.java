package joelfiare.tpfinal.pronostico;

import java.sql.*;
import java.util.HashMap;

public class Conexion extends Config{

    static String DB_URL = Config.getHost();
    static String USER = Config.getUser();
    static String PASS = Config.getPass();

    public static void cargarApostadores(HashMap<Integer, Apostador> apostadores) throws SQLException {
        Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("select * from Apostadores");

        System.out.print("Cargando... ");
        while (rs.next()) {
            int id = rs.getInt("dni");
            String nombre = rs.getString("nombre");
            Apostador ap = new Apostador(id, nombre);
            apostadores.put(ap.getDni(), ap);
        }
        System.out.print("Apostadores, ");
        conn.close();
    }

    public static void cargarEquipos(HashMap<String, Equipo> Campeonato) throws SQLException {
        Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("select * from equipos");

        while (rs.next()) {
            String nombreEquipo = rs.getString("Equipo");
            int temporada = rs.getInt("Partidos");
            Equipo eq = new Equipo(nombreEquipo, temporada);
            Campeonato.put(nombreEquipo, eq);
        }
        System.out.print("equipos, ");
        conn.close();
    }

    public static void cargarPartidos(Campeonato campeonato) throws SQLException {
        Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("select * from partidos");
        int i = 1;
        Ronda ronda = new Ronda(i);

        while (rs.next()) {
            int UID = rs.getInt("idPartido");
            Equipo equipoA = campeonato.buscarEquipo(rs.getString("EquipoA"));
            int golesA = rs.getInt("GolesA");
            int golesB = rs.getInt("GolesB");
            Equipo equipoB = campeonato.buscarEquipo(rs.getString("EquipoB"));
            Partido p = new Partido(UID, equipoA, golesA, golesB, equipoB);

            if (!(UID / 100 == i)) {
                campeonato.getPartidos().put(i, ronda);
                i++;
                ronda = new Ronda(i);
            }
            ronda.getUnaRondaHashMap().put(p.getUID(), p);

            if (i == campeonato.getTotalRondas()) {
                campeonato.getPartidos().put(i, ronda);
            }
        }
        System.out.print("partidos y ");
        conn.close();
    }

    public static void cargarPronosticos(HashMap<Integer, Apostador> aps) throws SQLException {
        Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("select * from pronostico");
        int eq = 0;

        while (rs.next()) {
            int dni = rs.getInt("dni");
            int partidoKey = rs.getInt("idPartido");
            int pronostico = rs.getInt("Pronostico");
            ResultadoEnum pronosticoResultado;

            switch (pronostico) {
                case 1 -> {
                    eq = 1;
                    pronosticoResultado = ResultadoEnum.GANADOR;
                }
                case 3 -> {
                    eq = 3;
                    pronosticoResultado = ResultadoEnum.PERDEDOR;
                }
                default -> pronosticoResultado = ResultadoEnum.EMPATE;
            }
            Apostador apostadores = aps.get(dni);
            Ticket tk = new Ticket(partidoKey, eq, pronosticoResultado);
            apostadores.getApuestasTot().put(tk.getPartidoKey(), tk);
        }
        System.out.println("pronósticos cargados con éxito.");
        System.out.println("Todos los datos han sido cargados con éxito.\n");
        rs.close();
        conn.close();
    }



}