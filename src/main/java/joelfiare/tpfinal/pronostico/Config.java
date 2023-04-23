package joelfiare.tpfinal.pronostico;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Config {
    private static String driver;
    private static String ip;
    private static String port;
    private static String database;
    private static String user;
    private static String pass;

    public Config() {
        Path archivo = Paths.get("src/main/java/joelfiare/tpfinal/pronostico/Config.cfg");

        try {
            for (String cadena : Files.readAllLines(archivo)) {
                String[] separa = cadena.split("=");
                switch (separa[0]) {
                    case "DRIVER":
                        driver = separa[1];
                    case "IP":
                        ip = separa[1];
                    case "PORT":
                        port = separa[1];
                    case "DATABASE":
                        database = separa[1];
                    case "USUARIO":
                        user = separa[1];
                    case "PASSWORD":
                        pass = separa[1];
                }
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static String getHost() {
        return driver + ip + ":" + port + "/" + database;
    }

    public static String getUser() {
        return user;
    }

    public static String getPass() {
        return pass;
    }
}