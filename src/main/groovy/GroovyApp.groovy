import static spark.Spark.*;

public class GroovyApp {
    public static void main(String[] args) {
        get("/", { req, res -> "Hello World"} )
    }
}
