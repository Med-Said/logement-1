/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rimsoft.Model;

//import javax.persistence.Column;

import java.io.File;
import java.util.List;


public class LogementStore {

    private int id;
    private String lieu;
    private String tel;
    private String capacite;
    private String prix;
    private String photo;
    private File photoFile;
    private List<LogementStore> logements;
    
    private String minPrix;
    private String maxPrix;
    
    //constructers
    public LogementStore() {
        this.lieu = "";
        this.tel = "";
        this.capacite = "";
        this.prix = "";
    }
    public LogementStore(int id, String lieu, String tel, String capacite, String prix) {
        this.id = id;
        this.lieu = lieu;
        this.tel = tel;
        this.capacite = capacite;
        this.prix = prix;
    }
    
    
    //getters & setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLieu() {
        return lieu;
    }

    public void setLieu(String lieu) {
        this.lieu = lieu;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getCapacite() {
        return capacite;
    }

    public void setCapacite(String capacite) {
        this.capacite = capacite;
    }

    public String getPrix() {
        return prix;
    }

    public void setPrix(String prix) {
        this.prix = prix;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getMinPrix() {
        return minPrix;
    }

    public void setMinPrix(String minPrix) {
        this.minPrix = minPrix;
    }

    public String getMaxPrix() {
        return maxPrix;
    }

    public void setMaxPrix(String maxPrix) {
        this.maxPrix = maxPrix;
    }

    
    
    
    public File getPhotoFile() {
        return photoFile;
    }

    public void setPhotoFile(File photoFile) {
        this.photoFile = photoFile;
    }

    public List<LogementStore> getLogements() {
        return logements;
    }

    public void setLogements(List<LogementStore> logements) {
        this.logements = logements;
    }
}
