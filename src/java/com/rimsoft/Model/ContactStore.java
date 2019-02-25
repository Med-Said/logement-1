/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rimsoft.Model;

/**
 *
 * @author Med Said M'bareck
 */
public class ContactStore {
    private String tel;
    private String message;

        public ContactStore() {
        this.tel = "";
        this.message = "";
    }
    
    public ContactStore(String tel, String message) {
        this.tel = tel;
        this.message = message;
    }
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}