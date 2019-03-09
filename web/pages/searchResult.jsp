<%-- 
    Document   : searchResult
    Created on : Mar 5, 2019, 12:24:56 PM
    Author     : Med Said M'bareck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body> 
        <jsp:include page="../pages/partials/minNav.jsp" />
        <h1><center>Résultats de recherche</center> </h1>
        <table class="table">
         <thead>
           <tr>
             <th scope="col">#</th>
             <th scope="col">lieu</th>
             <th scope="col">capacite</th>
             <th scope="col">prix</th>
           </tr>
         </thead>
         <tbody>
             <s:iterator value="logements">
           <tr>
             <th scope="row"><s:property value="id" ></s:property></th>
             <td><s:property value="lieu" ></s:property></td>
             <td><s:property value="capacite" ></s:property></td>
             <td><s:property value="prix" ></s:property></td>
           </tr>
             </s:iterator>

         </tbody>
       </table>
    </body>
</html>
