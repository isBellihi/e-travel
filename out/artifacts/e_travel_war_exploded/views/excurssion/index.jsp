<%--
  Created by IntelliJ IDEA.
  User: Win5
  Date: 05/01/2019
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="shortcut icon" href="https://vrent.techvill.net/public/front/images/logos/favicon.ico">
 <title>Lister les excurssions  </title>


 <style type="text/css">

  label.error {
   color:red !important;
  }

  .error-tag {
   color:red !important;
   font-weight: bold !important;
   font-size: 13px !important;
  }

  .errorTxt_p{
   color: red !important;
   font-weight: bold !important;
   font-size: 14px !important;
  }

 </style>

</head>
<body>
<%@ include file="/WEB-INF/layouts/header.jsp" %>
<div class="container margin-top30">
 <div class="col-md-3">
  <div class="panel panel-default">
   <div class="panel-footer">
    <div class="panel">
     <ul class="sidenav-list">

      <li>
       <a href="" aria-selected="true" class="sidenav-item">Vos offres</a>
      </li>
      <li>
       <a href="" aria-selected="false" class="sidenav-item">Réservations</a>
      </li>
     </ul>
    </div>
   </div>
  </div>
 </div>

 <div class="col-md-9 min-height-div">
  <div class="panel panel-default">
   <div class="panel-body h4">Listé</div>
   <c:forEach items="${requestScope.excurssions}" var="excurssion">
   <div class="panel-footer">
    <div class="col-md-2 col-sm-2 col-xs-12"><img class="img-responsive" style="width:150px; height:125px;" src="${excurssion.fiche}"></div>
    <div class="col-md-7 col-sm-7 col-xs-12 margin-top10">
     <a href="/e-travel/show/${excurssion.id_excurssion}" class="text-normal"><div class="h4">${excurssion.titre}</div></a>
     <div class="h6 text-danger">${excurssion.dateDepart} --  ${excurssion.dateArrivee}</div>
     <div class="h6 text-danger">${excurssion.villeDepart.nom} --  ${excurssion.villeArrivee.nom}</div>
    </div>
    <div class="col-md-3 col-sm-3 col-xs-12 margin-top30">
     <div id="availability-dropdown" data-room-id="div_12">
      <i class="dot row-space-top-2 col-top dot-success"></i>
      <div class="select">
       <select class="form-control room-list-status" data-room-id="12">
        <option value="Listed" selected>Listé</option>
        <option value="Unlisted" >Non répertorié</option>
       </select>
      </div>
     </div>
    </div>
    <div class="clearfix"></div>
   </div>
   </c:forEach>
  </div>
 </div>
</div>
<%@ include file="/WEB-INF/layouts/footer.jsp" %>

</body>
</html>

