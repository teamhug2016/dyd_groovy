import static spark.Spark.*;

public class GroovyApp {
    public static void main(String[] args) {
        get("/hello", { req, res -> "Hello World"} );
    }
}
