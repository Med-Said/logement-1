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
    <style>
        .divFrom{
            width: 50%;
            /*border: 1px solid red;*/
            margin-left: 30px;
        }
        .divSubmit{
            margin-left: 45%;
            position: absolute;
        }
        legend{
           text-align: center;
          background: rgba(0,0,0,0.15);
        }
    </style>
  </head>
  <body>
      <jsp:include page="../pages/partials/minNav.jsp" />
<div class="divFrom">
	  	<form action="search" method="post">
                <fieldset>
                  <legend>Recherche d'un logement</legend>
		  
                    <div class="form-group row">
		    <label for="lieu" class="col-md-4 col-form-label">Lieu</label>
		    <div class="col-md-8">
		      <s:textfield required="true"  name="logementStore.lieu"   cssClass="form-control" id="lieu" placeholder="lieu"/>
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="capacite" class="col-md-4 col-form-label">Capacité</label>
		    <div class="col-md-8">
		      <s:textfield required="true"  name="logementStore.capacite"  cssClass="form-control" id="capacite" placeholder="capacite"/>
		    </div>
		  </div>
                    
                <div class="form-row">
                        <label for="minPrix" class="col-md-2 col-form-label">Prix de</label>
			<div class="form-group col-md-4">
				<s:textfield required="true" id="minPrix" name="logementStore.minPrix"  cssClass="form-control"  placeholder=""/>
			</div>
                        <label for="maxPrix" class="col-md-1 col-form-label">à</label>
			<div class="form-group col-md-5">
				<s:textfield required="true" id="maxPrix" name="logementStore.maxPrix"  class="inputStyle" cssClass="form-control" placeholder=""/>
			</div>
		</div>
                    
                        <div class="divSubmit">
		  	<input type="submit" class="btn btn-primary" value="Rechercher" >
                        <input type="reset" class="btn btn-primary" value="Annuler" >
		  </div>
                    </fieldset>
		</form>
  	</div>




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
