package FunctionLayer;

public class Bog {

    public Bog( String navn, String forfatter, String udgivelsesÅr ) {
        this.navn = navn;
        this.forfatter = forfatter;
        this.udgivelsesÅr = udgivelsesÅr;
    }

    private int bogId; // just used to demo retrieval of autogen keys in UserMapper
    private String navn;
    private String forfatter; // Should be hashed and secured
    private String udgivelsesÅr;

    public String getNavn() {
        return navn;
    }

    public void setNavn( String navn ) {
        this.navn = navn;
    }

    public String getForfatter() {
        return forfatter;
    }

    public void setForfatter( String forfatter ) {
        this.forfatter = forfatter;
    }

    public String getUdgivelsesÅr() {
        return udgivelsesÅr;
    }

    public void setUdgivelsesÅr( String udgivelsesÅr ) {
        this.udgivelsesÅr = udgivelsesÅr;
    }

    public int getId() {
        return bogId;
    }

    public void setId( int id ) {
        this.bogId = id;
    }


    @Override
    public String toString() {
        return "Bog{" +
                "bogId=" + bogId +
                ", navn='" + navn + '\'' +
                ", forfatter='" + forfatter + '\'' +
                ", udgivelsesÅr='" + udgivelsesÅr + '\'' +
                '}' ;
    }
}

