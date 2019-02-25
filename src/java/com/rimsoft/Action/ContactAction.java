/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rimsoft.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.rimsoft.Model.ContactStore;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Med Said M'bareck
 */
public class ContactAction extends ActionSupport{

        private ContactStore contactStore;

    @Override
    public String execute() throws Exception {
        String result="error";
    Connection connection=null;
   try
   {
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost/logement?user=root&password=");
    String sql = "INSERT INTO contact (tel,message) VALUES (?,?)";
			PreparedStatement ps = connection.prepareStatement(sql);
                        ps.setString(1, contactStore.getTel());
			ps.setString(2, contactStore.getMessage());
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

    public ContactStore getContactStore() {
        return contactStore;
    }

    public void setContactStore(ContactStore contactStore) {
        this.contactStore = contactStore;
    }
    
    
    
    
}
