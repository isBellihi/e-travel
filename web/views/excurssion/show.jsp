<%@ page import="java.sql.Timestamp" %>
<%@ page import="web.Model.Excurssion" %><%--
  Created by IntelliJ IDEA.
  User: Win5
  Date: 05/01/2019
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html class="js csstransforms csstransforms3d csstransitions" lang="en">
<head>

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
<div class="carousel-inner" role="listbox">
 <div class="item active">
  <div class="ex-image-container" onclick="lightbox(0)" style="background-image:url(${requestScope.excurssion.fiche});">
  </div>
 </div>
</div>
<div class="container">
 <div class="">
  <div class="col-md-8 col-sm-12 margin-top20">
   <div class="row">
    <div class="col-md-3 col-sm-3">
     <div class="media-photo-badge text-center">
      <a href="https://vrent.techvill.net/users/show/1" ><img alt="User Profile Image" class="profile-img-thumb" src="${requestScope.excurssion.client.image}" title="${requestScope.excurssion.client.nom}"></a>
      <div href="" class="h6">${requestScope.excurssion.client.nom}</div>
     </div>
    </div>
    <div class="col-md-9 col-sm-9">
     <div class="col-md-12">
      <h1 itemprop="name" class="h3">
       ${requestScope.excurssion.titre}
      </h1>
     </div>
     <div class="col-md-12">
      <div class="col-md-7 r-pad-none">
       <div class="h6">
        <a href="" class="">${requestScope.excurssion.villeDepart.nom} , ${requestScope.excurssion.villeArrivee.nom}</a>
        &nbsp;
       </div>
      </div>
      <div class="col-md-5 r-pad-none">
       <div style="float:left;">
        <ul class="star-rating-alt">
         <li class="current-rating" style="width: 100px">
         </li>
        </ul>
       </div>
       <div class="margin-top10" style="font-size:18px;float:left;">
        (2)
       </div>
      </div>
      <div class="clearfix"></div>
     </div>
    </div>
   </div>
  </div><!--end-->
  <div class="col-md-4 col-sm-12">
   <div id="sticky-anchor"></div>
   <div id="booking-banner" class="banner-bar">
    <div class="banner-bar-bg">
     <div class="col-lg-12">
      <div class="white_color pull-left h4">DH <span  id="rooms_price_amount" value="">${requestScope.excurssion.frais}</span></div>
      <div class="white_color pull-right h6">
       <div id="par-personne" class="par-personne">
        Par personne
       </div>
      </div>
     </div>
    </div>
   </div>
   <div id="booking-price" class="panel panel-default">
    <div class="margin-top10">
     <form accept-charset="UTF-8" method="post" action="">
      <div class="col-md-8 col-sm-4">
       <label>Personnes</label>
       <div class="form-group">
        <input type="number" max="${excurssion.nbrPlace}" min="1" class="form-control" value="1" id="nbr-personne">
       </div>
      </div>
      <div id="book_it">
       <div class="book_btn col-md-12 mb20">
        <a class="col-md-12 col-sm-12 col-xs-12 btn ex-btn btn btn-success" href="#reservation">
                    <span class="">
                      Demande de réservation
                    </span>
        </a>
       </div>
       <!--<p class="col-md-12 text-center">Vous pourrez vérifier avant de payer.</p>-->
      </div>
      <input id="hosting_id" name="hosting_id" type="hidden" value="2">
     </form>
    </div>
    <div class="clearfix"></div>
   </div>
  </div>
 </div>
 <hr>
 <div class="clearfix"></div>
 <div class="col-md-12">
  <h3 class="margin-top60"><strong>À propos de cette excursion</strong> </h3>
  <h5 class="margin-top20" style="text-align: justify;">${requestScope.excurssion.description}</h5>


  <div class="margin-top30">
   <hr>
   <div class="row">
    <div class="col-md-1 col-sm-1">
     <div class="text-muted">
      Plus de details
     </div>
    </div>
    <div class="col-md-11 col-sm-11">
     <strong>À propos de l'excursion</strong>
     <p style="text-align: justify;">${excurssion.regelement}</p>
     <a href="javascript:void(0)" id="description_trigger" data-rel="description" class="more-btn"><strong>+ Plus</strong></a>
    </div>
   </div>
   <hr>
   <div class="row">
    <div class="col-md-3 col-sm-3">
     <div class="text-muted">
      Disponibilité
     </div>
    </div>
    <div class="col-md-9 col-sm-9">
     <div class="row">
      <div class="col-md-6 col-sm-6">
       <div>${Math.round((excurssion.dateArrivee.getTime() - excurssion.dateDepart.getTime())/(1000*60*60*24))} jours</div>
      </div>
      <div class="col-md-6 col-sm-6">
       <a id="view-calendar" href="javascript:void(0)"><strong>Afficher le calendrier</strong></a>
      </div>
     </div>
    </div>
   </div>
   <hr>
   <div id="reservation">
    <div class="row">
    <div class="row"> <b>Ce qui est inclus :</b></div>
     <br>
    <c:forEach items="${excurssion.outils}" var="outil" >
     <c:if test="${outil.prixReservation == 0}">
      <div class="col-md-8">
       ${outil.nom}
      </div>
      <div class="col-md-2">
       <span class="glyphicon glyphicon-ok"></span>
      </div>
      <div class="col-md-2"></div>
      <br>
     </c:if>
    </c:forEach>
    </div>
    <hr>
    <div class="row">
    <div class="row"> <b>Ce qui n'est pas inclus :</b></div>
     <br>
     <c:if test="${(sessionScope.client != null && excurssion.client.id_client != sessionScope.client.id_client) || sessionScope.client == null}">
    <form action="/e-travel/reservation/" method="post">
     <c:forEach items="${excurssion.outils}" var="outil" >
      <c:if test="${outil.prixReservation > 0}">
       <div class="col-md-8">
         ${outil.nom}
       </div>
       <div class="col-md-4 form-group" >
        <input type="checkbox" class="form-control" name= "options"  value="${outil.id_outil}">
        <label for="${outil.id_outil}" class="">${outil.prixReservation} DH / personne</label>
       </div>
       <br>
      </c:if>
     </c:forEach>
     <input type="hidden" name = "excurssion" value="${excurssion.id_excurssion}" />
     <input type="hidden" name = "host" value="${sessionScope.client.id_client}" />
     <br><br><br><br>
     <div class="book_btn col-md-3 mb20">
      <input type="submit" class="col-md-12 col-sm-12 col-xs-12 btn ex-btn btn btn-success" href="#reservation">
                    <span class="">
                      Envoyer la demande
                    </span>
      </input>
     </div>
    </form>
     </c:if>
    </div>
   </div>
   <hr>
  <div class="clearfix"></div>
  <div class="h4 margin-top40"><strong>À propos de l&#039;hôte, John</strong></div>
  <div class="row margin-top20">
   <div class="col-md-3 text-center">
    <div class="media-photo-badge text-center">
     <a href="https://vrent.techvill.net/users/show/1" ><img alt="John" class="" src="${excurssion.client.image}" title="John"></a>
    </div>
   </div>
   <div class="col-md-9">
    <div class="row">
     <div class="col-md-6">
      Membre depuis 2018

     </div>
    </div>
   </div>
  </div>
  <hr>
 </div>

 </div>

 <div class="row mb25">
  <div id="room-detail-map" style="width:100%; height:600px;"></div>
 </div>
 <div class="row margin-top20 mb30">
  <h4 class="row-space-4 text-center-sm mb50">Listes suggérées</h4>
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
<!--<script type="text/javascript">
    $(document).ready(function() {
        $('.menubar-toggle').sidr({
            displace: false
        });
    });

    function closeNav(){
        $.sidr('close', 'sidr');
    }
</script>
<script>
    $("#view-calendar").click(function() {
        return $("#list_checkin").trigger("select");
    })
-->
<script type="text/javascript">
    $('#nbr-personne').on ('input',function () {
        var max = parseInt($(this).attr('max'));
        var min = parseInt($(this).attr('min'));
        if ($(this).val() > max)
        {
            $(this).val(max);
        }
        else if ($(this).val() < 0)
        {
            $(this).val(min);
        }
    });
</script>
<script>
    $(function() {
        $("#list_checkin").datepicker({
            dateFormat: "dd-mm-yy",
            minDate: 0,
            onSelect: function(e) {
                var t = $("#list_checkin").datepicker("getDate");
                t.setDate(t.getDate() + 1), $("#list_checkout").datepicker("setDate", t), $("#list_checkout").datepicker("option", "minDate", t), setTimeout(function() {
                    $("#list_checkout").datepicker("show")
                }, 20)
                //price_calculation('', '', '');
            }
        });
    });

    $(function() {
        $("#list_checkout").datepicker({
            dateFormat: "dd-mm-yy",
            minDate: 1,
            onClose: function() {
                var e = $("#list_checkin").datepicker("getDate"),
                    t = $("#list_checkout").datepicker("getDate");
                if (e >= t) {
                    var a = $("#list_checkout").datepicker("option", "minDate");
                    $("#list_checkout").datepicker("setDate", a)
                }
            },onSelect: function(){
                //price_calculation('', '', '');
            }
        });
    });
</script>
<!--
    function sticky_relocate() {
        var window_top = $(window).scrollTop();
        var div_top = $('#sticky-anchor').offset().top;
        if (window_top > div_top) {
            $('#booking-banner').addClass('stick');
            $('#booking-price').addClass('stick');
            $('#sticky-anchor').height($('#sticky').outerHeight());
        } else {
            $('#booking-banner').removeClass('stick');
            $('#booking-price').removeClass('stick');
            $('#sticky-anchor').height(0);
        }
        if(window_top > 2600){
            $('#booking-price').hide();
        }else{
            $('#booking-price').show();
        }
    }
    $(function(){
        var checkin     = $('#url_checkin').val();
        var checkout    = $('#url_checkout').val();
        var guest       = $('#url_guests').val();
        price_calculation(checkin, checkout, guest);
    });

    $('#number_of_guests').on('change', function(){
        /*var checkin     = $('#list_checkin').val();
        var checkout    = $('#list_checkout').val();
        var guest       = $('#number_of_guests').val();*/
        price_calculation('', '', '');
    });

    function price_calculation(checkin, checkout, guest){
        checkin = checkin != ''? checkin:$('#list_checkin').val();
        checkout = checkout != ''? checkout:$('#list_checkout').val();
        guest = guest != ''? guest:$('#number_of_guests').val();
        if(checkin != '' && checkout != '' &&  guest != ''){
            var property_id     = $('#property_id').val();
            var dataURL = 'https://vrent.techvill.net/property/get-price';
            $.ajax({
                url: dataURL,
                data: {
                    'checkin': checkin,
                    'checkout': checkout,
                    'guest_count': guest,
                    'property_id': property_id,
                },
                type: 'post',
                //async: false,
                dataType: 'json',
                beforeSend: function (){
                    $('.price_table').hide();
                    show_loader();
                },
                success: function (result) {
                    if(result.status == 'Not available'){
                        $('.book_btn').hide();
                        $('.booking-subtotal').hide();
                        $('#book_it_disabled').show();
                    }else{
                        $('.additional_price').show();
                        $('.security_price').show();
                        $('.cleaning_price').show()
                        $("#total_night_count").html(result.total_nights);
                        $('#total_night_price').html(result.total_night_price);
                        $('#service_fee').html(result.service_fee);
                        if(result.additional_guest != 0) $('#additional_guest').html(result.additional_guest);
                        else $('.additional_price').hide();
                        if(result.security_fee != 0) $('#security_fee').html(result.security_fee);
                        else $('.security_price').hide();
                        if(result.cleaning_fee != 0) $('#cleaning_fee').html(result.cleaning_fee);
                        else $('.cleaning_price').hide();
                        $('#total').html(result.total);
                        //$('#total_night_price').html(result.total_night_price);

                        $('.booking-subtotal').show();

                        $('#book_it_disabled').hide();
                        $('.book_btn').show();
                    }

                    var host = "1";
                    if(host == '1') $('.book_btn').hide();
                },
                error: function (request, error) {
                    // This callback function will trigger on unsuccessful action
                    console.log(error);
                },
                complete: function(){
                    $('.price_table').show();
                    hide_loader();
                }
            });
        }
    }

    $(function() {
        $(window).scroll(sticky_relocate);
        sticky_relocate();
    });


    $('.more-btn').on('click', function(){
        var name = $(this).attr('data-rel');
        $('#'+name+'_trigger').hide();
        $('#'+name+'_after').show();
    });

    $('#room-detail-map').locationpicker({
        location: {
            latitude: "40.6892494",
            longitude: "-74.0445004"
        },
        radius: 0,
        addressFormat: "",
        markerVisible: false,
        markerInCenter: true,
        enableAutocomplete: true,
        scrollwheel: false,
        oninitialized: function (component) {
            setCircle($(component).locationpicker('map').map);
        }
    });

    function setCircle(map){
        var citymap = {
            loccenter: {
                center: {lat: 41.878, lng: -87.629},
                population: 240
            },
        };

        var cityCircle = new google.maps.Circle({
            strokeColor: '#329793',
            strokeOpacity: 0.8,
            strokeWeight: 2,
            fillColor: '#329793',
            fillOpacity: 0.35,
            map: map,
            center: {lat: 40.6892494, lng: -74.0445004 },
            radius: citymap['loccenter'].population
        });
    }

    function lightbox(idx) {
        //show the slider's wrapper: this is required when the transitionType has been set to "slide" in the ninja-slider.js
        var ninjaSldr = document.getElementById("ninja-slider");
        ninjaSldr.parentNode.style.display = "block";

        nslider.init(idx);

        var fsBtn = document.getElementById("fsBtn");
        fsBtn.click();
    }

    function fsIconClick(isFullscreen) { //fsIconClick is the default event handler of the fullscreen button
        if (isFullscreen) {
            var ninjaSldr = document.getElementById("ninja-slider");
            ninjaSldr.parentNode.style.display = "none";
        }
    }

    function show_loader(){
        $('#loader').removeClass('display-off');
        $('#pagination').hide();
    }

    function hide_loader(){
        $('#loader').addClass('display-off');
        $('#pagination').show();
    }
</script>
<script type="text/javascript">
    $(document).ready( function(){
        $(document).on('change', '.day-of-birth', function (){
            $('#day-of-birth').val($('#user_birthday_year').val()+'-'+$('#user_birthday_month').val()+'-'+$('#user_birthday_day').val());



        });

    })
</script>-->