/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

/**
 *
 * @author ASUS
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class login {

    private String dbUrl = "jdbc:mysql://localhost:3306/dbtaylor";
    private String dbUname = "root";
    private String dbPassword = "";
    private String dbDriver = "com.mysql.cj.jdbc.Driver";

    public void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return con;
    }

    public boolean validate(loginModel loginModel) {
        loadDriver(dbDriver);
        Connection con = getConnection();
        boolean status = false;
        String sql = "SELECT * FROM tb_user WHERE username = ? and password = ?";

        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, loginModel.getUsername());
            ps.setString(2, loginModel.getPassword());

            ResultSet rs = ps.executeQuery();
            status = rs.next();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return status;
    }

}
