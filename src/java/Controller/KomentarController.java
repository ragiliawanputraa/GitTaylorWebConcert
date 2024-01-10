/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.KomentarModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author laiqah
 */
public class KomentarController {
    Connection con;

    public KomentarController(Connection con) {
        this.con = con;
    }

    //add comment information to database
    public boolean addComment(KomentarModel comment) {
        boolean test = false;

        try {
            String query = "insert into tb_comment (Nama,Komentar,Bintang) values(?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, comment.getNama());
            pst.setString(2, comment.getKomentar());
            pst.setString(3, comment.getBintang());
            pst.executeUpdate();
            test = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return test;
      }
    
    //retrieve the comment details from database
     public List<KomentarModel> getTheComment(){
        List<KomentarModel> comment = new ArrayList<>();
        
        try{
            
            String query = "select * from tb_comment";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String Nama = rs.getString("Nama");
                String Komentar = rs.getString("Komentar");
                String Bintang = rs.getString("Bintang");
                
                KomentarModel row = new KomentarModel(id,Nama,Komentar,Bintang);
                comment.add(row);
            }
            
        }catch(Exception e){
          e.printStackTrace();
        }
        return comment;
    }
    
    
    
//  get single book information in edit page
    public KomentarModel getSingleComment(int id){
        KomentarModel km = null;
        
        try{
            String query = "select * from tb_comment where id=? ";
            
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            ResultSet rs= pst.executeQuery();
            
            while(rs.next()){
                int bid = rs.getInt("id");
                String bNama = rs.getString("Nama");
                String bKomentar = rs.getString("Komentar");
                String bBintang  = rs.getString("Bintang");
                
                km = new KomentarModel(bid, bNama, bKomentar, bBintang);
            }
        }
        catch(Exception ex){
        ex.printStackTrace();
        }
        return km;
    }
    
    
    //edit book information
    public boolean editCommentInfo(KomentarModel comment){
        boolean test = false;
        
        try{
            String query = "update tb_comment set Nama=?, Komentar=?, Bintang=? where id=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, comment.getNama());
            pst.setString(2, comment.getKomentar());
            pst.setString(3, comment.getBintang());
            pst.setInt(4, comment.getId());
            
            pst.executeUpdate();
            test = true;
        }
        catch(Exception ex){
            ex.printStackTrace();
        
        }
        
        return test;
        
        
    }
    
    
//    delete books from database
    
    
    public void deleteComment(int id){
        try{
            
           String query= "delete from tb_comment where id=?";
           PreparedStatement pst = this.con.prepareStatement(query);
           pst.setInt(1, id);
           pst.execute();
            
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    
}

