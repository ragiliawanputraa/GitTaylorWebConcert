/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author aldys
 */
public class KomentarModel {
    int id;
    String Nama;
    String Komentar;
    String Bintang;
    
    public KomentarModel() {
    }
    
    public KomentarModel(int id, String Nama, String Komentar, String Bintang){
       this.id = id;
       this.Nama= Nama;
       this.Komentar= Komentar;
       this.Bintang= Bintang;
    }
    
    public KomentarModel(String Nama, String Komentar, String Bintang){
       this.Nama= Nama;
       this.Komentar= Komentar;
       this.Bintang= Bintang;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNama() {
        return Nama;
    }

    public void setNama(String Nama) {
        this.Nama = Nama;
    }

    public String getKomentar() {
        return Komentar;
    }

    public void setKomentar(String Komentar) {
        this.Komentar = Komentar;
    }

    public String getBintang() {
        return Bintang;
    }

    public void setBintang(String Bintang) {
        this.Bintang = Bintang;
    }
    
    @Override
    public String toString(){
        return "KomentarModel(" + "id=" + id + ", Nama=" + Nama + ", Komentar=" + Komentar + ", Bintang=" + Bintang + '}';
    }
}
