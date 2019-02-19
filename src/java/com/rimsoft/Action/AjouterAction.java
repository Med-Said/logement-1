/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rimsoft.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.rimsoft.Model.LogementStore;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Med Said M'bareck
 */
public class AjouterAction extends ActionSupport{

    public String getCapacite() {
        return capacite;
    }

    public void setCapacite(String capacite) {
        this.capacite = capacite;
    }

    public String getLieu() {
        return lieu;
    }

    public void setLieu(String lieu) {
        this.lieu = lieu;
    }

    public String getPrix() {
        return prix;
    }

    public void setPrix(String prix) {
        this.prix = prix;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }
        
        String capacite;
        String lieu;
        String prix;
        String tel;

        @Override
    public String execute() throws Exception {
        String result="error";
    Connection connection=null;
   try
   {
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost/logement?user=root&password=toor");
    String sql = "INSERT INTO logement (capacite,lieu, prix, tel) VALUES (?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(sql);
                        ps.setString(1, capacite);
			ps.setString(2, lieu);
			ps.setString(3, prix);
			ps.setString(4, tel);
			ps.executeUpdate();
    result="success";
     } //try
     catch (ClassNotFoundException | SQLException e)
     {
      result =e.getMessage();
      } //catch
    finally
    {
     if (connection != null)
      {
       try
        {
         connection.close();
          } //try
       catch (SQLException e)
       {
        }//catch
      }//if
    }//finally
   return result;

    }



    public void setLogementBean(LogementStore logementBean) {
    } 
}