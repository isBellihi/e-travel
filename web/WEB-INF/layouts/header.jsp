<%--
  Created by IntelliJ IDEA.
  User: Win5
  Date: 01/01/2019
  Time: 09:45
  To change this template use File | Settings | File Templates.
  --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="/e-travel/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

<link href="/e-travel/public/front/css/css.css" rel="stylesheet" type="text/css" />
<link href="/e-travel/public/front/css/glyphicon.css" rel="stylesheet" type="text/css" />
<link href="/e-travel/public/front/css/awsome/css/font-awesome.css" rel="stylesheet" type="text/css" />
<link href="/e-travel/public/front/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="/e-travel/public/front/css/cs-select.css" rel="stylesheet" type="text/css" />
<link href="/e-travel/public/front/css/style.css" rel="stylesheet" type="text/css" />
<link href="/e-travel/public/front/css/styles.css" rel="stylesheet" type="text/css" />

<link href="/e-travel/public/front/js/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
<link href="/e-travel/public/front/js/ninja/ninja-slider.css" rel="stylesheet" type="text/css" />
<link href="/e-travel/public/front/css/bootstrap-slider.css" rel="stylesheet" type="text/css" />
<link href="/e-travel/public/front/css/jquery.sidr.dark.css" rel="stylesheet" type="text/css" />
<!-- AnythingSlider -->
<link rel="stylesheet" type="text/css" href="/e-travel/public/front/anything/css/anythingslider.css">
<link rel="stylesheet" type="text/css" href="/e-travel/public/front/anything/css/theme-metallic.css">
<link rel="stylesheet" type="text/css" href="/e-travel/public/front/anything/css/theme-minimalist-round.css">
<link rel="stylesheet" type="text/css" href="/e-travel/public/front/anything/css/theme-minimalist-square.css">
<link rel="stylesheet" type="text/css" href="/e-travel/public/front/anything/css/theme-construction.css">
<link rel="stylesheet" type="text/css" href="/e-travel/public/front/anything/css/theme-cs-portfolio.css">
<div class="header2">
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <!-- Brand and toggle get grouped for better mobile display -->
   <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed menubar-toggle">
     <span class="sr-only">Toggle navigation</span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="/e-travel/index.jsp"><img style="height: 27px; width: 120px;" src="/e-travel/public/front/images/logos/logo.png" alt="logo"></a>
   </div>

   <!-- Collect the nav links, forms, and other content for toggling -->
   <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <form action="" id="head-form" class="navbar-form navbar-left search-form">
     <!-- <form action="http://vrent.techvill.net/search" id="head-form" class="navbar-form navbar-left search-form"> -->
     <div class="form-group sm-dropdown">
      <input type="text" name="location" id="header-search-form" class="form-control" placeholder="ou allez vous ?" style="width:200px;margin-bottom:1px;">
      <div id="search-drop-down" class="sm-dropdown-content">
       <div class="col-md-12" style="padding:0px 5px;">
        <div class="col-md-4" style="padding:0px 5px;">
         <label class="nav-label">Enregistrement</label>
         <input type="text" name="checkin" id="header-search-checkin" class="nav-form-control" autocomplete="off" readonly="readonly">
        </div>
        <div class="col-md-4" style="padding:0px 5px;">
         <label class="nav-label">Check-out</label>
         <input type="text" name="checkout" id="header-search-checkout" class="nav-form-control" autocomplete="off" readonly="readonly">
        </div>
        <div class="col-md-4" style="padding:0px 5px;">
         <label class="nav-label">Client</label>
         <select class="nav-form-control" id="header-search-guests" name="guests">
          <option value="1"> 1 </option>
          <option value="2"> 2 </option>
          <option value="3"> 3 </option>
          <option value="4"> 4 </option>
          <option value="5"> 5 </option>
          <option value="6"> 6 </option>
          <option value="7"> 7 </option>
          <option value="8"> 8 </option>
          <option value="9"> 9 </option>
          <option value="10"> 10 </option>
          <option value="11"> 11 </option>
          <option value="12"> 12 </option>
          <option value="13"> 13 </option>
          <option value="14"> 14 </option>
          <option value="15"> 15 </option>
          <option value="16"> 16+  </option>
         </select>
        </div>
        <div class="col-md-12">
         <button class="btn ex-btn navbar-btn topbar-btn" style="width:100%;" type="submit">
          <i class="fa fa-search" aria-hidden="true"></i>
          Trouver un endroit
         </button>
        </div>
       </div>
      </div>
     </div>
    </form>

    <!--  <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Browse<span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a href="http://vrent.techvill.net/wishlists/popular">Popular</a></li>
          </ul>
        </li>
       </ul>-->
    <ul class="nav navbar-nav navbar-right">
     <c:choose>
      <c:when test="${sessionScope.get('client') != null}">

       <li><a href="dashboard"><div class="user-div"><img src="/e-travel/public/front/images/profils/defaultprofil.png" style="width:100%;"></div></a></li>
       <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="false" aria-expanded="false">
         <c:out value="${((sessionScope.client)).nom}" /><span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
         <li><a href="/e-travel/dashboard">Tableau de bord</a></li>
         <li><a href="https://vrent.techvill.net/inbox">Boîte de réception</a></li>
         <li><a href="/e-travel/excurssions/index">Vos offres</a></li>
         <li><a href="https://vrent.techvill.net/my_bookings">Réservations de propriété</a></li>
         <li><a href="https://vrent.techvill.net/trips/active">Vos voyages</a></li>
         <li><a href="https://vrent.techvill.net/users/profile">Editer le profil</a></li>
         <li><a href="https://vrent.techvill.net/users/account_preferences">Compte</a></li>
         <li><a href="/e-travel/logout">Connectez - Out</a></li>
        </ul>
       </li>
       <li><a href="/e-travel/new" class="btn ex-btn navbar-btn topbar-btn">Publier un offre</a></li>
      </c:when>
      <c:when test="${sessionScope.get('client') == null}">
       <li><a href="/e-travel/signup">S'inscrire</a></li>
       <li><a href="/e-travel/signin">S'identifier</a></li>
       <li><a href="/e-travel/all" class="btn ex-btn navbar-btn topbar-btn">Les excursions disponibles</a></li>
      </c:when>
     </c:choose>
    </ul>

   </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
 </nav>
</div>

<script src="/e-travel/public/front/js/jquery.js"></script>
<script src="/e-travel/public/front/js/bootstrap.js"></script>

<!--<script type="text/javascript" src='https://maps.google.com/maps/api/js?key=AIzaSyBYscmIGBbHydud3Vd_3HcvF_ZiBXX6uZw&amp;sensor=false&amp;libraries=places'></script>-->

<!--<script src="/e-travel/public/front/js/locationpicker.jquery.min.js"></script>-->
<script src="/e-travel/public/front/js/jquery-ui.js"></script>
<script src="/e-travel/public/front/js/bootbox.min.js"></script>
<script src="/e-travel/public/front/js/front.js"></script>
<script src="/e-travel/public/front/js/jquery.sidr.js"></script>



<script src="/e-travel/public/front/js/jquery.validate.min.js"></script>
<script src="/e-travel/public/front/js/ninja/ninja-slider.js"></script>
<script src="/e-travel/public/front/js/bootstrap-slider.js"></script>
<script src="/e-travel/public/front/js/selectFx.js"></script>
<script src="/e-travel/public/front/js/admin.js"></script>
<!--Anything Slider js -->
<!-- Anything Slider optional plugins -->
<script src="/e-travel/public/front/anything/js/jquery.easing.1.2.js"></script>
<!-- http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js -->
<script src="/e-travel/public/front/anything/js/swfobject.js"></script>


<!-- AnythingSlider -->
<script src="/e-travel/public/front/anything/js/jquery.anythingslider.js"></script>

<!-- AnythingSlider video extension; optional, but needed to control video pause/play -->
<script src="/e-travel/public/front/anything/js/jquery.anythingslider.video.js"></script>