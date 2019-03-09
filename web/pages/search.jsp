<%-- 
    Document   : search
    Created on : Mar 5, 2019, 11:46:11 AM
    Author     : Med Said M'bareck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>






<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
      <s:form action="search">
    <div >
    <td>  Lieu </td>
    <td>  <s:textfield required="true"  name="logementStore.lieu"   cssClass="form-control" id="lieu" placeholder="lieu"/></td>
    </div>
    <div >
    <td>  Capacite</td>
  <td>    <s:textfield required="true"  name="logementStore.capacite"  cssClass="form-control" id="capacite" placeholder="capacite"/></td>
  </div>   
  
  <div >
        <td> prix de </td>
        <td> <s:textfield required="true"  name="logementStore.minPrix"  cssClass="form-control"  placeholder=""/></td>
    </div>
    <div >
     <td> a </td>
    <td>  <s:textfield required="true" name="logementStore.maxPrix"  class="inputStyle" cssClass="form-control" id="" placeholder="lieu"/></td>
    </div>
  
<!--   <div >
    <td>  photo</td>
  <td>    <s:file  name="logementStore.photoFile"  cssClass="form-control"  /></td>
  </div>   -->

      <s:submit  cssClass="btn btn-primary" type="submit" value="Submit"></s:submit>
</s:form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
