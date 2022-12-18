package com.Dao;




import com.entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    
    public boolean saveUser(User user){
        boolean f=false;
        try{
            String query = "insert into user(username , mobile , password , email , gender , medium) values (?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(query);  
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getMobile());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getEmail());
            pstmt.setString(5, user.getGender());
            pstmt.setString(6, user.getMedium());
            
            pstmt.executeUpdate();
            f=true;
        }
        catch(Exception e){
          e.printStackTrace();
        }
        return f;
    }
    
    //get user by useremail and userpassword:
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {

            String query = "select * from user where email =? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                user = new User();

//             data from db
                String name = set.getString("username");
//             set to user object
                user.setName(name);

                user.setId(set.getInt("id"));
                user.setMobile(set.getString("mobile"));
                user.setPassword(set.getString("password"));
                user.setEmail(set.getString("email"));
                user.setGender(set.getString("gender"));
                user.setMedium(set.getString("medium"));
                user.setTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    public boolean updateUser(User user) {

        boolean f = false;
        try {

            String query = "update user set   email=?  ,mobile=?, medium=?, profile=? where  id =?";
            PreparedStatement p = con.prepareStatement(query);
            //p.setString(1, user.getName());
            p.setString(1, user.getEmail());
            p.setString(2,user.getMobile());
            p.setString(3, user.getMedium());

            p.setString(4, user.getProfile());
            p.setInt(5, user.getId());

            p.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    public User getUserByUserId(int userId) {
        User user = null;
        try {
            String q = "select * from user where id=?";
            PreparedStatement ps = this.con.prepareStatement(q);
            ps.setInt(1, userId);
            ResultSet set = ps.executeQuery();
            if (set.next()) {
                user = new User();

//             data from db
                String name = set.getString("username");
//             set to user object
                user.setName(name);

                user.setId(set.getInt("id"));
                user.setMobile(set.getString("mobile"));
                user.setPassword(set.getString("password"));
                user.setEmail(set.getString("email"));
                user.setGender(set.getString("gender"));
                user.setMedium(set.getString("medium"));
                user.setTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

}
