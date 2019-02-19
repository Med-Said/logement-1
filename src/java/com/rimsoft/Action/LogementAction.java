/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rimsoft.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.rimsoft.Model.LogementStore;
import com.sun.javafx.scene.control.skin.VirtualFlow;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Med Said M'bareck
 */
public class LogementAction extends ActionSupport{
    List<LogementStore> logements;
    
    @Override
    public String execute() throws Exception {
        logements = new ArrayList<>();
        
        String result="error";
    Connection connection=null;
   try
   {
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost/logement?user=root&password=toor");
    String sql = "SELECT * FROM logement";
     
    PreparedStatement preparedStatement = connection.prepareStatement(sql);

 
    ResultSet resultset = preparedStatement.executeQuery();
    while(resultset.next())
      {
       int id = resultset.getInt(1);
       String lieu = resultset.getString(2);
       String tel = resultset.getString(3);
       String capacite = resultset.getString(4);
       String prix = resultset.getString(5);
       LogementStore ls = new LogementStore(id,lieu,tel,capacite,prix);
       logements.add(ls);
      result="success";
      }//while
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
        System.out.println(e);
        }//catch
      }//if
    }//finally
   return result;
         
    }

    public List<LogementStore> getLogements() {
        return logements;
    }
    
}