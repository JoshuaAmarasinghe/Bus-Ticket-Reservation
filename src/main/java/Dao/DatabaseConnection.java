package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//class used to make the database connection
public class DatabaseConnection {
    public static Connection connectDB() throws ClassNotFoundException, SQLException {
        //database connection details
        String dbDriver = "com.mysql.jdbc.Driver";
        String dbURL = "jdbc:mysql://localhost:3306/";
        String dbName = "bus_ticket_reservation";
        String dbUsername = "root";
        String dbPassword = "";

        //connecting the database
        Class.forName(dbDriver);
        Connection conn = DriverManager.getConnection(dbURL+dbName, dbUsername, dbPassword);
        return conn;
    }
}
