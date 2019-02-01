<%--
  Created by IntelliJ IDEA.
  User: Win5
  Date: 29/01/2019
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
 <title>Title</title>
</head>
<body>
<%@ include file="/WEB-INF/layouts/header.jsp" %>
<div class="container">

 <div class="row margin-top20 mb30">
  <h4 class="row-space-4 text-center-sm mb50">Listes suggerees</h4>
  <c:forEach items="${excurssions}" var="item">
   <div class="col-md-4 col-sm-4 col-xs-12 mb10">
    <div class="similar-room-div" style="min-height: 250px;">
     <a href="/e-travel/show/${item.id_excurssion}" class="similar-room">
      <img src="${item.fiche}" alt="">
     </a>
    </div>
    <div>
     <div class="media-left">
      <div class="media-user">
       <div class="doller-sign-bg">DH ${item.frais}</div>
      </div>
     </div>
     <div class="media-user">
      <div class="col-xs-9 mb20">
       <br><br>
       <div class="location-title"><a href="/e-travel/show/${item.id_excurssion}">${item.titre}</a></div>
       <div class="text-muted">${item.dateDepart} -- ${item.dateArrivee}</div>
       <div class="text-muted">${item.villeDepart.nom} -- ${item.villeArrivee.nom}</div>
      </div>
      <div class="col-xs-3">
       <br>
       <div class="media-user-img"><a href=""><img src="${item.client.image}" alt="" width="100%"></a></div>
       <div class="text-muted"><a href=""> ${item.client.nom} ${item.client.prenom}</a></div>
      </div>
     </div>
    </div>
   </div>
  </c:forEach>
 </div>
</div>
<%@ include file="/WEB-INF/layouts/footer.jsp" %>

</body>
</html>
