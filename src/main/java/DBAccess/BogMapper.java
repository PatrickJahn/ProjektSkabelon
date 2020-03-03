package DBAccess;


import FunctionLayer.Bog;
import FunctionLayer.User;

import java.sql.*;
import java.util.ArrayList;

public class BogMapper {

    public static ArrayList<Bog> bogListe;

    public ArrayList<Bog> hentBøger() throws SQLException, ClassNotFoundException {

        // SINGLETON
        if (bogListe == null) {
            bogListe = new ArrayList<Bog>();

        }
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM Bog";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                String navn = rs.getString("bogNavn");

                String forfatter = rs.getString("bogForfatter");
                String udgivelsesÅr = rs.getString("udgivelsesÅr");
                int bogId = rs.getInt("bogId");
                Bog bog = new Bog(navn, forfatter, udgivelsesÅr);
                bog.setId(bogId);

                    bogListe.add(bog);

            }


            return bogListe;
        } catch (Exception e) {
            System.out.println(e);
        }

        return bogListe;
    }

    public void indsætBog(Bog bog) throws SQLException, ClassNotFoundException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO Bog (bognavn, bogForfatter, udgivelsesÅr) VALUES (?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, bog.getNavn());
            ps.setString(2, bog.getForfatter());
            ps.setString(3, bog.getUdgivelsesÅr());
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }
}
