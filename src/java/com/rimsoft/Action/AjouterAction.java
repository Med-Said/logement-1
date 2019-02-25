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
    
    private LogementStore logementStore;
          
        @Override
    public String execute() throws Exception {
    String result="error";
    Connection connection=null;
   try
   {
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost/logement?user=root&password=");
    String sql = "INSERT INTO logement (capacite,lieu, prix, tel) VALUES (?,?,?,?)";

			PreparedStatement ps = connection.prepareStatement(sql);
                        ps.setString(1, logementStore.getCapacite());
			ps.setString(2, logementStore.getLieu());
			ps.setString(3, logementStore.getPrix());
			ps.setString(4, logementStore.getTel());
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
    

    public LogementStore getLogementStore() {
        return logementStore;
    }

    public void setLogementStore(LogementStore logementStore) {
        this.logementStore = logementStore;
    }
}