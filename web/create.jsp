<%--
Created by IntelliJ IDEA.
User: Win5
Date: 30/11/2018
Time: 10:26
To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>


<!DOCTYPE HTML>
<html>
<head>
 <title>e-travel</title>
</head>
<style type="text/css">
.error{
 color: red;
}
</style>
<body>
 <script type="text/javascript">
  $(document).ready(function() {

   $('.check-frais').change(function() {
    if($(this).is(":checked")) {
     $('.input-frais').css("display","none");
    }else{
     $('.input-frais').css("display","block");
    }
   });
  });
 </script>
 <div class="container">
  <div class="row">
   <div class="panel panel-success">
    <div class="panel-heading"><h3>Créer offre co-voiturage</h3></div>
    <div class="well panel-body">
     <form action="/e-travel/new" method="POST" id="newTravel" role="form">
      <div class="row">
       <div>
        <label for="desc">Description :</label>
       </div>
       <div class="col-md-7">
        <textarea cols="70" rows="8" name="description" id="description"></textarea>
       </div>
       <div class="col-md-5">
        <div class="row">
         <div class="col-md-6">
          <input type="datetime-local" id="meeting-time" value="2018-06-12T19:30"  name="dateDepart">
          <label for="dateDepart">la date de depart :</label>
         </div>
         <div class="col-md-6">
          <input type="datetime-local" id="meeting-time" value="2018-06-12T19:30"  name="dateArrivee">
          <label for="dateArrive">la date d'arrivee :</label>
         </div>
        </div>
        <br><br>
        <div class="row">
         <div class="col-md-6">
          <label for="dateDepart">le nombre des places :</label>
          <input type="number" name="nbrPlace">
         </div>
         <div class="col-md-6">
          <label for="dateArrive">les frais de participation :</label>
          <input type="number" class="input-frais" name="frais" style="display: none;" value="0">
          <label>Gratuit :</label><input type="checkbox" checked class="check-frais" name="frais">
         </div>
        </div>
        <br><br>
        <div class="row">
         <div class="col-md-8">
          <label for="marqueVoiture">la marque de la voiture : </label>
          <input type="text" size="50" name="marqueVoiture">
         </div>
        </div>
       </div>
      </div>
      <br><br><br>
      <div class="row">
       <div class="col-md-6">
        <label for="villeDepart">Selectionner la ville de depart :</label>
        <select name="villeDepart">
         <c:forEach  items="${villes}" var = "ville">
         <option value="${ville.getId_ville()}" name="Ifran">${ville.getNom()}</option>
        </c:forEach>
       </select>
      </div>
      <div class="col-md-6">
       <label for="villeArrivee">Selectionner la ville d'arrivee :</label>
       <select name="villeArrivee">
        <c:forEach  items="${villes}" var = "ville">
        <option value="${ville.getId_ville()}" name="Ifran">${ville.getNom()}</option>
       </c:forEach>
      </select>
     </div>
    </div>
    <br>
    <div class="pull-right">
     <input type="submit" class="btn btn-success" value="Submit" />
    </div>
   </form>
  </div>
 </div>
</div>
</div>
</body>
</html>
