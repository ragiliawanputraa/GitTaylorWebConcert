/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author laiqah
 */
public class AlbumModel {
    int idalbum;
    String judulalbum;
    String deskripsialbum;
    String tahunrilis;
    String linkalbum;
    
    public AlbumModel() {
    }
    
    public AlbumModel(int idalbum, String judulalbum, String deskripsialbum, String tahunrilis, String linkalbum){
       this.idalbum = idalbum;
       this.judulalbum= judulalbum;
       this.deskripsialbum= deskripsialbum;
       this.tahunrilis= tahunrilis;
       this.linkalbum= linkalbum;
    }
    
    public AlbumModel(String judulalbum, String deskripsialbum, String tahunrilis, String linkalbum){
       this.judulalbum= judulalbum;
       this.deskripsialbum= deskripsialbum;
       this.tahunrilis= tahunrilis;
       this.linkalbum= linkalbum;
    }

    public int getId() {
        return idalbum;
    }

    public void setId(int idalbum) {
        this.idalbum = idalbum;
    }

    public String getjudulalbum() {
        return judulalbum;
    }

    public void setjudulalbum(String judulalbum) {
        this.judulalbum = judulalbum;
    }

    public String getdeskripsialbum() {
        return deskripsialbum;
    }

    public void setdeskripsialbum(String deskripsialbum) {
        this.deskripsialbum = deskripsialbum;
    }

    public String gettahunrilis() {
        return tahunrilis;
    }

    public void settahunrilis(String tahunrilis) {
        this.tahunrilis = tahunrilis;
    }
    
    public String getlinkalbum() {
        return linkalbum;
    }

    public void setlinkalbum(String linkalbum) {
        this.linkalbum = linkalbum;
    }
    
    @Override
    public String toString(){
        return "AlbumModel(" + "id=" + idalbum + ", judul=" + judulalbum + ", deskripsi=" + deskripsialbum + ", tahun=" + tahunrilis +", link=" + linkalbum +'}';
    }
}