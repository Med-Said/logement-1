/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rimsoft.Model;

//import javax.persistence.Column;

import java.util.List;

//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;
//import javax.persistence.Table;

/**
 *
 * @author Med Said M'bareck
 */
//@Entity
//@Table(name = "logement")
public class LogementStore {
//    @Id
//    @GeneratedValue
    private int id;
    
//    @Column(name = "lieu")
    private String lieu;
    
//    @Column(name = "tel")
    private String tel;
    
//    @Column(name = "capacite")
    private String capacite;
    
//    @Column(name = "prix")
    private String prix;
    
    private List<LogementStore> logements;
    
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

    public List<LogementStore> getLogements() {
        return logements;
    }

    public void setLogements(List<LogementStore> logements) {
        this.logements = logements;
    }
}
