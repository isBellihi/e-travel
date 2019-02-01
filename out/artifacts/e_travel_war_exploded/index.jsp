<!DOCTYPE html>
<html class="js csstransforms csstransforms3d csstransitions" lang="en">

<!-- Mirrored from vrent.techvill.net/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Dec 2018 22:19:19 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
   <meta http-equiv="content-type" content="text/html; charset=UTF-8">
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>Home | e-travel Home  </title>

   <meta property="og:image" content="">
   <meta name="mobile-web-app-capable" content="yes">
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

<div id="mega-slider" class="carousel slide" data-ride="carousel">
   <!-- Wrapper for slides -->
   <div class="carousel-inner" role="listbox">
      <div class="item active">
         <img src="/e-travel/public/front/images/banners/banner_1.png" alt="...">
         <div class="carousel-caption">
            <h2>BIENVENU A e-travel</h2>
         </div>
      </div>
      <div class="item ">
         <img src="/e-travel/public/front/images/banners/banner_2.png" alt="...">
         <div class="carousel-caption">
         </div>
      </div>
      <div class="item ">
         <img src="/e-travel/public/front/images/banners/banner_3.png" alt="...">
         <div class="carousel-caption">
         </div>
      </div>

   </div>

   <!-- Controls -->
   <a class="left carousel-control" href="#mega-slider" role="button" data-slide="prev">
   </a>
   <a class="right carousel-control" href="#mega-slider" role="button" data-slide="next">
   </a>
</div>
<div class="mg-bn-forms-up">
   <div class="mg-book-now2 mg-book-now">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="mg-bn-forms">
                  <form id="front-search-form" method="post" action="http://vrent.techvill.net/search">
                     <div class="row">
                        <div class="col-sm-6 col-md-4 col-xs-12 input-mb">
                           <div class="input-group date mg-check-in col-xs-12">
                              <input class="form-control" id="front-search-field" autocomplete="off" name="location" type="text" required placeholder="Où veux-tu aller?">
                           </div>
                        </div>
                        <div class="col-sm-6 col-md-2 col-xs-12 input-mb">
                           <div class="input-group date mg-check-in">
                              <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                              <input class="form-control" name="checkin" id="front-search-checkin" placeholder="Enregistrement" autocomplete="off" type="text" readonly="readonly" required>
                           </div>
                        </div>
                        <div class="col-sm-6 col-md-2 col-xs-12 input-mb">
                           <div class="input-group date mg-check-out">
                              <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                              <input class="form-control" name="checkout" id="front-search-checkout" placeholder="Check-out" type="text" readonly="readonly" required>
                           </div>
                        </div>
                        <div class="col-sm-6 col-md-2 col-xs-12">
                           <div class="input-group date mg-check-out col-xs-12">
                              <select id="front-search-guests" class="form-control black-select">
                                 <option value="1">1 client</option>
                                 <option value="2"> 2 clients </option>
                                 <option value="3"> 3 clients </option>
                                 <option value="4"> 4 clients </option>
                                 <option value="5"> 5 clients </option>
                              </select>
                           </div>
                        </div>
                        <div class="col-md-2 col-xs-12 front-search">
                           <button type="submit" class="btn btn-main btn-block">Chercher</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
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
</div>

<div id="sidr" class="sidenav" style="display: none;">
   <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
   <p>&nbsp;</p>
   <a href="signup.html">S'inscrire</a>
   <a href="login.html">S'identifier</a>
   <a href="login.html">Listez votre espace</a>
</div>
<%@ include file="/WEB-INF/layouts/footer.jsp" %>

<script type="text/javascript">
   /* Document.$(ready(function () {
        $.ajax({

            url : "/e-travel/excursions",
            dataType : 'json',
            error : function() {

                alert("Error Occured");
            },
            success : function(data) {
                var receivedData = [];

                $.each(data.jsonArray, function(index) {
                    $.each(data.jsonArray[index], function(key, value) {
                        var point = [];

                        point.push(key);
                        point.push(value);
                        receivedData.push(point);
                    });
                });

            }
        });
    }));*/

</script>

<div id="alert_model" class="modal fade" role="dialog">
   <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Modal Header</h4>
         </div>
         <div class="modal-body">
            <p>Some text in the modal.</p>
         </div>
         <div class="modal-footer">
            <button id="ok_id" type="button" class="btn btn-danger">Ok</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         </div>
      </div>

   </div>
</div>
<script type="text/javascript">
    var APP_URL = "index.html";
    var USER_ID = "";
</script>
<!--<script src="public/front/js/jquery.js"></script>

<script src="public/front/js/bootstrap.js"></script>

<script type="text/javascript" src='https://maps.google.com/maps/api/js?key=AIzaSyBYscmIGBbHydud3Vd_3HcvF_ZiBXX6uZw&amp;sensor=false&amp;libraries=places'></script>

<script src="public/front/js/locationpicker.jquery.min.js"></script>
<script src="public/front/js/jquery-ui.js"></script>
<script src="public/front/js/bootbox.min.js"></script>
<script src="public/front/js/front.js"></script>
<script src="public/front/js/jquery.sidr.js"></script>
-->
<script type="text/javascript">
    $(document).ready(function() {
        $('.menubar-toggle').sidr({
            displace: false
        });
    });

    function closeNav(){
        $.sidr('close', 'sidr');
    }
</script>
<!--<script src="public/front/js/jquery.validate.min.js"></script>
<script src="public/front/js/ninja/ninja-slider.js"></script>
<script src="public/front/js/bootstrap-slider.js"></script>
<script src="public/front/js/selectFx.js"></script>
<script src="public/front/js/admin.js"></script>-->
<!--Anything Slider js -->
<!-- Anything Slider optional plugins -->
<!--<script src="public/front/anything/js/jquery.easing.1.2.js"></script>-->
<!-- http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js -->
<!--<script src="public/front/anything/js/swfobject.js"></script>-->


<!-- AnythingSlider -->
<!--<script src="public/front/anything/js/jquery.anythingslider.js"></script>-->

<!-- AnythingSlider video extension; optional, but needed to control video pause/play -->
<!--<script src="public/front/anything/js/jquery.anythingslider.video.js"></script>-->
<script type="text/javascript">
    $(document).ready( function(){
        $(document).on('change', '.day-of-birth', function (){
            $('#day-of-birth').val($('#user_birthday_year').val()+'-'+$('#user_birthday_month').val()+'-'+$('#user_birthday_day').val());



        });

    });
</script>
</body>

<!-- Mirrored from vrent.techvill.net/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Dec 2018 22:21:35 GMT -->
</html>
