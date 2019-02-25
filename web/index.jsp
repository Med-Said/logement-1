
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>logement</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
<style>
    
    
#im {
  border-radius: 50%;
  -webkit-transition: -webkit-transform .8s ease-in-out;
}
#im:hover {
  -webkit-transform: rotate(360deg);   
}

div.gallery {
  margin: 5px;
  margin-left: 1%;
  border: 1px solid #ccc;
  padding: 10px;
  float: left;

}

div.gallery:hover {
  border: 1px solid #777;
  background-color: #7386D5;
  transition: all 0.7s;

}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}
</style>



</head>

<body>
    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>logement</h3>
            </div>

            <ul class="list-unstyled components">
                <p>JAVA EE projet</p>
                  <li>
                    <a href="/logement">Home</a>
                </li>

                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Portfolio</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">

                        <li>
                            <table><td style="width: 25%;"><img id="im" style=" height: 25%;" 
                                                                src="https://scontent.ftun3-1.fna.fbcdn.net/v/t1.0-1/c0.27.160.160a/p160x160/36490828_1059833807499210_1342159146648076288_n.jpg?_nc_cat=101&_nc_ht=scontent.ftun3-1.fna&oh=09a63815fe96a7862f411cf901c1630f&oe=5CF76C4D" /></td><td><a style="font-style:oblique;text-decoration: none;width: 170%;" href="http://www.facebook.com/ridhadabbous" target="_blank">ridha</a></td></table>
                        </li>
                        <li>
                            <table><td style="width: 25%;"><img id="im" style=" height: 25%;" 
                                src="https://scontent.ftun3-1.fna.fbcdn.net/v/t1.0-1/p160x160/18425377_1918312221714741_3664120245807813521_n.jpg?_nc_cat=107&_nc_ht=scontent.ftun3-1.fna&oh=9ba2e3b94a425aa6fc187132cbf1000d&oe=5CEBF097" /></td><td><a style="font-style:oblique;text-decoration: none;width: 170%;" href="https://www.facebook.com/mbareck7" target="_blank">med said</a></td></table>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="pages/contact.jsp">Contact</a>
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>menu</span>
                    </button>


                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                               <button  type="button"  class="btn btn-success">
                        <i class="fas fa-align-left"></i>
                        <span>  <a style="text-decoration: none;"href="ajoute.jsp" > ajouter un locale</a>  </span>
                    </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            
        
        <s:iterator value="logements">
            <div class="gallery col-3" style="margin-left: 70px;">
                <img src="imgs/c.jpg" alt="Northern Lights" width="600" height="400">
                <div class="desc">
                    <table >
                        <tr> 
                            <td >Capacité:</td>
                            <td><s:property value="capacite" ></s:property></td>
                        </tr>
                       <tr> 
                            <td >lieu:</td>
                            <td><s:property value="lieu" ></s:property></td>
                        </tr>
                              <tr> <td >prix:</td> <td><s:property value="prix" ></s:property></td>
                        </tr>
                              <tr> <td >tel:</td>  <td><s:property value="tel" ></s:property></td>
                        </tr>
                    </table>
                </div>
            </div>
        </s:iterator>
        </div>
    </div>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
        
      
    </script>
</body>

</html>