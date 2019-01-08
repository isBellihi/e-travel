<%--
  Created by IntelliJ IDEA.
  User: Win5
  Date: 01/01/2019
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
 <title>Title</title>
</head>
<body>
<%@ include file="/WEB-INF/layouts/header.jsp" %>
<c:if test="${sessionScope.client == null}">
 <c:redirect url="signin"></c:redirect>
</c:if>
<div class="container margin-top30">
 <div class="col-md-3">
  <div class="panel panel-default">
   <a href="" title="">
    <img src="/e-travel/public/front/images/profils/defaultprofil.png" class="img-responsive" alt="" width="300" title ="John">
   </a>

   <div class="add-photo"><a href="">Ajouter une photo de profil</a></div>
   <h2 class="text-center mb20"><c:out value="${sessionScope.client.nom}"/></h2>
   <div class="text-center mb20">
    <p><a href="https://vrent.techvill.net/users/show/1">Voir le profil</a></p>
    <a href="https://vrent.techvill.net/users/profile" class="btn ex-btn">Profil complet</a>
   </div>
  </div>
 </div>
 <div class="col-md-9">
  <div class="panel panel-default">
   <div class="panel-body h4">
    Bienvenue à  e-travel, <c:out value="${sessionScope.client.nom } ${ sessionScope.client.prenom}"/>!
   </div>
  </div>
  <div class="panel panel-default">
   <div class="panel-body h4">
    Messages  (<c:out value="${requestScope.messages.size()}"/>)
   </div>
   <div class="panel-footer ">
    <ul class="list-layout">
    <c:forEach items="${requestScope.reservations}" var="reservation">
     <li id="thread_1" class="panel-body thread-read thread">
      <div class="row">
       <div class="col-md-3">
        <div class="col-5">
         <a href="#"><img height="50" width="50" title="customer" src="/e-travel/public/front/images/profils/clientImage.jpg" alt="client"></a>
        </div>
        <div class="col-7">
         <c:out value="${reservation.excurssion.client.nom} ${reservation.excurssion.client.prenom}"/>
         <c:if test="${reservation.confirme}">
          Confirmée
         </c:if>
         <c:if test="${!reservation.confirme}">
          Annulée
         </c:if>
         <br/>
         <c:out value="${reservation.messages.iterator().next().createdat} "/>
        </div>
       </div>
       <a class="link-reset text-muted" href="">
        <div class="col-md-7">
                       <span style="color:black"><b>
                        <!--Dear host,Please confirm my booking &amp; let me know.Thank you.-->
                       <c:out value="${reservation.messages.iterator().next().msg} "/>
                       </b></span>
         <br>
         <span class="text-muted">
          <span class="street-address"><c:out value="${reservation.excurssion.titre}" /> </span>, <span class="locality"><c:out value="${reservation.excurssion.villeDepart.nom}" /></span>,
          <span class="region"><c:out value="${reservation.excurssion.villeArivee.nom}" /></span>
                        (<c:out value="${reservation.excurssion.dateDepart}" />  jusqu à  <c:out value="${reservation.excurssion.dateArrivee}" />)
                      </span>
        </div>
       </a>
       <div class="col-md-2">
        <span class="label label-success">
         <c:if test="${reservation.confirme}">
          Confirmée
         </c:if>
         <c:if test="${!reservation.confirme}">
          Annulée
         </c:if>
        </span>
        <br><span>DH<c:out value="${reservation.prixTotal}" /> </span>
       </div>
      </div>
     </li>
    </c:forEach>
    </ul>
   </div>
   <div class="panel-body">
    <a href="">Tous les messages</a>
   </div>
  </div>
 </div>
</div>

<%@ include file="/WEB-INF/layouts/footer.jsp" %>
</body>
</html>


<!--<li id="thread_2" class="panel-body thread-read thread">
<div class="row">
<div class="col-md-3">
<div class="col-5">
<a href="#"><img height="50" width="50" title="customer" src="https://vrent.techvill.net/public/images/profile/2/profile_1523427507.jpg" alt="customer"></a>
</div>
<div class="col-7">
customer Declined
<br>
11/04/2018
</div>
</div>
<a class="link-reset text-muted" href="https://vrent.techvill.net/messaging/host/2">
<div class="col-md-7">
<span style="color:black"><b></b></span>
<br>
<span class="text-muted">
<span class="street-address">New York City Hall, 11 Centre St, New York, NY 10007, USA </span>, <span class="locality">New York</span>, <span class="region">New York</span>
(Jan 01, Jan 08, 2019)
</span>
</div>
</a>
<div class="col-md-2">
<span class="label label-info">Declined</span>
<br>$18</span>
</div>
</div>
</li>
<li id="thread_3" class="panel-body thread-read thread">
<div class="row">
<div class="col-md-3">
<div class="col-5">
<a href="#"><img height="50" width="50" title="customer" src="https://vrent.techvill.net/public/images/profile/2/profile_1523427507.jpg" alt="customer"></a>
</div>
<div class="col-7">
customer Accepted
<br>
11/04/2018
</div>
</div>
<a class="link-reset text-muted" href="https://vrent.techvill.net/messaging/host/3">
<div class="col-md-7">
<span style="color:black"><b></b></span>
<br>
<span class="text-muted">
<span class="street-address">Hôtel de Ville, 75004 Paris, France </span>, <span class="locality">Paris</span>, <span class="region">Île-de-France</span>
(Nov 30, Dec 31, 2018)
</span>
</div>
</a>
<div class="col-md-2">
<span class="label label-success">Accepted</span>
<br>$18</span>
</div>
</div>
</li>
<li id="thread_5" class="panel-body thread-read thread">
<div class="row">
<div class="col-md-3">
<div class="col-5">
<a href="#"><img height="50" width="50" title="customer" src="https://vrent.techvill.net/public/images/profile/2/profile_1523427507.jpg" alt="customer"></a>
</div>
<div class="col-7">
customer Accepted
<br>
11/04/2018
</div>
</div>
<a class="link-reset text-muted" href="https://vrent.techvill.net/messaging/host/3">
<div class="col-md-7">
<span style="color:black"><b>Hello,
Thank you.</b></span>
<br>
<span class="text-muted">
<span class="street-address">Hôtel de Ville, 75004 Paris, France </span>, <span class="locality">Paris</span>, <span class="region">Île-de-France</span>
(Nov 30, Dec 31, 2018)
</span>
</div>
</a>
<div class="col-md-2">
<span class="label label-success">Accepted</span>
<br>$18</span>
</div>
</div>
</li>
<li id="thread_7" class="panel-body thread-read thread">
<div class="row">
<div class="col-md-3">
<div class="col-5">
<a href="#"><img height="50" width="50" title="customer" src="https://vrent.techvill.net/public/images/profile/2/profile_1523427507.jpg" alt="customer"></a>
</div>
<div class="col-7">
customer Expired
<br>
11/04/2018
</div>
</div>
<a class="link-reset text-muted" href="https://vrent.techvill.net/messaging/host/4">
<div class="col-md-7">
<span style="color:black"><b></b></span>
<br>
<span class="text-muted">
<span class="street-address">Paris , Île-de-France , France </span>, <span class="locality">Paris</span>, <span class="region">Île-de-France</span>
(Jan 01, Jan 08, 2019)
</span>
</div>
</a>
<div class="col-md-2">
<span class="label label-info">Expired</span>
<br>$11</span>
</div>
</div>
</li>
<li id="thread_8" class="panel-body thread-read thread">
<div class="row">
<div class="col-md-3">
<div class="col-5">
<a href="#"><img height="50" width="50" title="customer" src="https://vrent.techvill.net/public/images/profile/2/profile_1523427507.jpg" alt="customer"></a>
</div>
<div class="col-7">
customer Expired
<br>
11/04/2018
</div>
</div>
<a class="link-reset text-muted" href="https://vrent.techvill.net/messaging/host/5">
<div class="col-md-7">
<span style="color:black"><b></b></span>
<br>
<span class="text-muted">
<span class="street-address">Unnamed Road, 6072 Sachseln, Switzerland </span>, <span class="locality">Sachseln</span>, <span class="region">Obwalden</span>
(Nov 30, Dec 31, 2018)
</span>
</div>
</a>
<div class="col-md-2">
<span class="label label-info">Expired</span>
<br>$28</span>
</div>
</div>
</li>
<li id="thread_9" class="panel-body thread-read thread">
<div class="row">
<div class="col-md-3">
<div class="col-5">
<a href="#"><img height="50" width="50" title="customer" src="https://vrent.techvill.net/public/images/profile/2/profile_1523427507.jpg" alt="customer"></a>
</div>
<div class="col-7">
customer Expired
<br>
12/04/2018
</div>
</div>
<a class="link-reset text-muted" href="https://vrent.techvill.net/messaging/host/6">
<div class="col-md-7">
<span style="color:black"><b></b></span>
<br>
<span class="text-muted">
<span class="street-address">New York City Hall, 11 Centre St, New York, NY 10007, USA </span>, <span class="locality">New York</span>, <span class="region">New York</span>
(Jan 01, Jan 08, 2019)
</span>
</div>
</a>
<div class="col-md-2">
<span class="label label-info">Expired</span>
<br>$22</span>
</div>
</div>
</li>
<li id="thread_10" class="panel-body thread-read thread">
<div class="row">
<div class="col-md-3">
<div class="col-5">
<a href="#"><img height="50" width="50" title="customer" src="https://vrent.techvill.net/public/images/profile/2/profile_1523427507.jpg" alt="customer"></a>
</div>
<div class="col-7">
customer Accepted
<br>
12/04/2018
</div>
</div>
<a class="link-reset text-muted" href="https://vrent.techvill.net/messaging/host/7">
<div class="col-md-7">
<span style="color:black"><b></b></span>
<br>
<span class="text-muted">
<span class="street-address">1 Liberty Island - Ellis Island, New York, NY 10004, USA </span>, <span class="locality">New York</span>, <span class="region">New York</span>
(Jan 01, Jan 08, 2019)
</span>
</div>
</a>
<div class="col-md-2">
<span class="label label-success">Accepted</span>
<br>$27</span>
</div>
</div>
</li>
<li id="thread_11" class="panel-body thread-read thread">
<div class="row">
<div class="col-md-3">
<div class="col-5">
<a href="#"><img height="50" width="50" title="customer" src="https://vrent.techvill.net/public/images/profile/2/profile_1523427507.jpg" alt="customer"></a>
</div>
<div class="col-7">
customer Accepted
<br>
12/04/2018
</div>
</div>
<a class="link-reset text-muted" href="https://vrent.techvill.net/messaging/host/8">
<div class="col-md-7">
<span style="color:black"><b></b></span>
<br>
<span class="text-muted">
<span class="street-address">switzerland </span>, <span class="locality">Genève</span>, <span class="region">Genève</span>
(Jan 01, Jan 08, 2019)
</span>
</div>
</a>
<div class="col-md-2">
<span class="label label-success">Accepted</span>
<br>$5</span>
</div>
</div>
</li>-->