<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
Created by IntelliJ IDEA.
User: Win5
Date: 30/11/2018
Time: 10:26
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <!-- Latest compiled and minified CSS -->
   
   <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
   <script type="text/javascript" src="js/bootstrap.min.js"></script>


</head>
<body>
<div class="container " style="margin-top: 100px;">
    <c:if test = "${add == true}">
        <div class="alert alert-success">Success! l'insertion est bien passé</div>
    </c:if>
    <c:if test= "${add == false}">
        <div class="alert alert-warning"> Warning ! erreur. </div>
    </c:if>

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-success well-sm">
                <div class="panel-heading">
                    <div class="row">
                        <form method="POST" enctype="multipart/form-data" action="">
                        <div class="col-md-1"></div>
                        <div class="col-md-2">
                            <select   class="form-control" name="type" id="type">
                                <option value="-1" selected="selected"></option>
                                <option value="">
                                </option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <select   class="form-control" name="universite" id="universite">
                                <option value="-1" selected="selected"></option>
                                <option value=""></option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <select   class="form-control" name="etablissement" id="etablissement">
                            </select>
                        </div>
                        <div class="col-md-2">
                            <select   class="form-control" name="frais" id="frais">
                                <option value="-1">Selectionner</option>
                                <option value="1"></option>
                                <option value="2"></option>
                            </select>
                        </div>
                        <div class="col-md-2 pull-right">
                            <br>
                            <button type="submit" class="btn btn-success" href="create.php">
                                Rechercher<span class="glyphicon glyphicon-search" style="padding-left: 10px"></span>
                            </button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-success well-lg">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-6"><h4>Tous les voyages : </h4></div>
                        <div class="col-md-3"></div>
                        <div class="col-md-3">
                            <a class="btn btn-success" href="create">
                                Ajouter un autr offre<span class="glyphicon glyphicon-plus" style="padding-left: 10px"></span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="panel-body ">
                    <table class="table" >
                        <thead class="thead-inverse">
                        <tr>
                            <th>Voyage</th>
                            <th>Date de depart</th>
                            <th>Date de d'arrivee</th>
                            <th>Ville de depart </th>
                            <th>ville d'arrivee</th>
                            <th>les frais</th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${voyages}" var="covoiturage">
                            <tr>
                                <td>${covoiturage.getId_coVoiturage()}</td>
                                <td>${  covoiturage.getDateDepart() }</td>
                                <td>${  covoiturage.getDateArivee() }</td>
                                <td>${ covoiturage.getVilleDepart().getNom() }</td>
                                <td>${ covoiturage.getVilleArivee().getNom() }</td>
                                <td><a> ${covoiturage.getFrais()} </a></td>
                                <!-- rest of you columns data-->
                            <td><a href=""><i class="glyphicon glyphicon-eye-open"></i> plus des details</a></td>
                            <td>
                                <form action="" method="POST">
                                    <input type="hidden" name="id" value="">
                                    <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit" ></span></button>
                                </form>
                            </td>
                            <td>
                                <form action="" method="post"
                                      onSubmit="if(!confirm('Voulez vous supprimer ?')){return false;}">
                                    <input type="hidden" name="id" value="">
                                    <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-trash" ></span></button>
                                </form>
                            </td>
                        </tr>
                            </c:forEach>
                        <!--<td></td><td></td><td>Aucune Competition repond au ces creteres</td>-->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>