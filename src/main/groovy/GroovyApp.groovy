import static spark.Spark.*;

public class GroovyApp {
    public static void main(String[] args) {
	ipAddress("0.0.0.0")
        get("/hello", { req, res -> "Hello World"} )
    }
}
