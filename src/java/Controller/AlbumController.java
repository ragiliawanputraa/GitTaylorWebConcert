/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.AlbumModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author laiqah
 */
public class AlbumController {
    Connection con;

    public AlbumController(Connection con) {
        this.con = con;
    }

    //add comment information to database
    public boolean addAlbum(AlbumModel album) {
        boolean test = false;

        try {
            String query = "insert into tb_album (judulalbum,deskripsialbum,tahunrilis,linkalbum) values(?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, album.getjudulalbum());
            pst.setString(2, album.getdeskripsialbum());
            pst.setString(3, album.gettahunrilis());
            pst.setString(4,album.getlinkalbum());
            pst.executeUpdate();
            test = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return test;
      }
    
    //retrieve the comment details from database
     public List<AlbumModel> getTheAlbum(){
        List<AlbumModel> album = new ArrayList<>();
        
        try{
            
            String query = "select * from tb_album";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int idalbum = rs.getInt("idalbum");
                String judulalbum = rs.getString("judulalbum");
                String deskripsialbum = rs.getString("deskripsialbum");
                String tahunrilis = rs.getString("tahunrilis");
                String linkalbum = rs.getString("linkalbum");
                
                AlbumModel row = new AlbumModel(idalbum,judulalbum, deskripsialbum, tahunrilis,linkalbum);
                album.add(row);
            }
            
        }catch(Exception e){
          e.printStackTrace();
        }
        return album;
    }
    
    
    
//  get single book information in edit page
    public AlbumModel getSingleAlbum(int id){
        AlbumModel km = null;
        
        try{
            String query = "select * from tb_album where idalbum=? ";
            
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            ResultSet rs= pst.executeQuery();
            
            while(rs.next()){
                int bidalbum = rs.getInt("idalbum");
                String bjudulalbum = rs.getString("judulalbum");
                String bdeskripsialbum = rs.getString("deskripsialbum");
                String btahunrilis  = rs.getString("tahunrilis");
                String blinkalbum  = rs.getString("linkalbum");
                
                km = new AlbumModel(bidalbum, bjudulalbum, bdeskripsialbum, btahunrilis, blinkalbum);
            }
        }
        catch(Exception ex){
        ex.printStackTrace();
        }
        return km;
    }
    
    
    //edit book information
    public boolean editAlbumInfo(AlbumModel album){
        boolean test = false;
        
        try{
            String query = "update tb_album set judulalbum=?, deskripsialbum=?, tahunrilis=?, linkalbum=? where idalbum=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, album.getjudulalbum());
            pst.setString(2, album.getdeskripsialbum());
            pst.setString(3, album.gettahunrilis());
            pst.setString(4, album.getlinkalbum());
            pst.setInt(5, album.getId());
            
            pst.executeUpdate();
            test = true;
        }
        catch(Exception ex){
            ex.printStackTrace();
        
        }
        
        return test;
        
        
    }
    public void deleteAlbum(int id){
        try{
            
           String query= "delete from tb_album where idalbum=?";
           PreparedStatement pst = this.con.prepareStatement(query);
           pst.setInt(1, id);
           pst.execute();
            
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}