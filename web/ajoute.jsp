
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>logement</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">


</head>

<body>
    <div class="wrapper">
        <!-- Sidebar  -->
       

        <!-- Page Content  -->
        <div id="content">

            <jsp:include page="pages/partials/minNav.jsp" />
            <div class="row">
            <div class="col-3"></div> 
            <table >          
  <s:form action="ajouter">
    <div >
        <td> capacite</td>
        <td> <s:textfield required="true"  name="logementStore.capacite"  cssClass="form-control" id="inputEmail4" placeholder="capacite"/></td>
    </div>
    <div >
     <td> lieu </td>
    <td>  <s:textfield required="true" name="logementStore.lieu"  class="inputStyle" cssClass="form-control" id="inputPassword4" placeholder="lieu"/></td>
    </div>
    
    <div >
    <td>  prix </td>
    <td>  <s:textfield required="true"  name="logementStore.prix"   cssClass="form-control" id="inputEmail4" placeholder="prix"/></td>
    </div>
    <div >
    <td>  tel</td>
  <td>    <s:textfield required="true"  name="logementStore.tel"  cssClass="form-control" id="inputPassword4" placeholder="tel"/></td>
  </div>   
  
<!--   <div >
    <td>  photo</td>
  <td>    <s:file  name="logementStore.photoFile"  cssClass="form-control"  /></td>
  </div>   -->

      <s:submit  cssClass="btn btn-primary" type="submit" value="Submit"></s:submit>
</s:form>
            </table>
			</div> 	        
        </div>
    </div>

</body>

</html>