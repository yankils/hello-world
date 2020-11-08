import java.sql.*;

public class LoginDao {
    public static boolean validate(String name,String pass){
        boolean status=false;
        try{
            Class.forName("org.mariadb.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mariadb://192.168.4.172:3306/TEST","root","Ee123456");

            PreparedStatement ps=con.prepareStatement(
                    "select * from userreg where name=? and pass=?");
            ps.setString(1,name);
            ps.setString(2,pass);

            ResultSet rs=ps.executeQuery();
            status=rs.next();
            con.close();

        }catch(Exception e){System.out.println(e); }
        return status;
    }
}  