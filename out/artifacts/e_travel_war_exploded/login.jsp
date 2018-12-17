<%--
  Created by IntelliJ IDEA.
  User: Win5
  Date: 17/12/2018
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="js csstransforms csstransforms3d csstransitions" lang="en">

<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="public/front/images/logos/favicon.ico">
    <title>Log In  </title>

    <meta property="og:image" content="">
    <meta name="mobile-web-app-capable" content="yes">

    <link href="public/front/css/css.css" rel="stylesheet" type="text/css" />
    <link href="public/front/css/glyphicon.css" rel="stylesheet" type="text/css" />
    <link href="public/front/css/awsome/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="public/front/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="public/front/css/cs-select.css" rel="stylesheet" type="text/css" />
    <link href="public/front/css/style.css" rel="stylesheet" type="text/css" />
    <link href="public/front/css/styles.css" rel="stylesheet" type="text/css" />

    <link href="public/front/js/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <link href="public/front/js/ninja/ninja-slider.css" rel="stylesheet" type="text/css" />
    <link href="public/front/css/bootstrap-slider.css" rel="stylesheet" type="text/css" />
    <link href="public/front/css/jquery.sidr.dark.css" rel="stylesheet" type="text/css" />
    <!-- AnythingSlider -->
    <link rel="stylesheet" type="text/css" href="public/front/anything/css/anythingslider.css">
    <link rel="stylesheet" type="text/css" href="public/front/anything/css/theme-metallic.css">
    <link rel="stylesheet" type="text/css" href="public/front/anything/css/theme-minimalist-round.css">
    <link rel="stylesheet" type="text/css" href="public/front/anything/css/theme-minimalist-square.css">
    <link rel="stylesheet" type="text/css" href="public/front/anything/css/theme-construction.css">
    <link rel="stylesheet" type="text/css" href="public/front/anything/css/theme-cs-portfolio.css">

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
                <a class="navbar-brand" href="index.html"><img style="height: 27px; width: 120px;" src="public/front/images/logos/logo.png" alt="logo"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <form action="http://vrent.techvill.net/s" id="head-form" class="navbar-form navbar-left search-form">
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
                    <li><a href="signup.html">S'inscrire</a></li>
                    <li><a href="login.html">S'identifier</a></li>
                    <li><a href="login.html" class="btn ex-btn navbar-btn topbar-btn">Listez votre espace </a></li>
                </ul>

            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>


<div class="container margin-top30">
    <div class="col-md-4 col-center">
        <div class="panel panel-default">
            <div class="panel">
                <div class="panel-body">
                    <a href="" class="btn btn-facebook" style="padding: 8px 8px !important;">
                        <div class="responsive-content" style="font-size: 13px !important"><i class="fa fa-facebook pad-r-3"></i>Inscrivez vous avec Facebook</div>
                    </a>
                    <!--<div class="clearfix"></div>-->
                    <a href="" class="btn btn-google" style="padding: 8px 8px !important;">
                        <div class="responsive-content" style="font-size: 13px !important">
                            <i class="fa fa-google-plus pad-r-4"></i>
                            Inscrivez vous via google
                        </div>
                    </a>

                    <div class="col-md-12 cls-or" style="margin-top:10px;">
                        <label>ou</label>
                    </div>
                    <form id="login_form" method="post" action="http://vrent.techvill.net/authenticate" class='signup-form login-form' accept-charset='UTF-8'>
                        <div class="col-sm-12" style="padding-right: 0px !important;padding-left: 0px !important">
                            <input type="text" class="form-control" name="email" placeholder = "email">
                        </div>
                        <div class="col-sm-12" style="padding-right: 0px !important;padding-left: 0px !important">
                            <input type="password" class="form-control" name="password" placeholder = "mot de pass">
                        </div>
                        <div class="col-sm-12" style="padding-right: 0px !important;padding-left: 0px !important">
                            <div class="col-sm-6 txt-left l-pad-none">
                                <input type="checkbox" class='remember_me' id="remember_me2" name="remember_me" value="1">
                                 restez connecté
                            </div>
                            <div class="col-sm-6 txt-right r-pad-none">
                                <a href="forgot_password.html" class="forgot-password pull-right">mot de passe oublié?</a>
                            </div>
                        </div>
                        <div class="col-sm-12 mrg-top-25" style="padding-right: 0px !important;padding-left: 0px !important">
                            <input type="submit" class="btn ex-btn btn-block btn-large" value="Entrar" id='user-login-btn'>
                        </div>
                    </form>
                    <div class="col-sm-12 mrg-top-25" style="text-align:center;padding-right: 0px !important;padding-left: 0px !important;word-spacing: 0px !important">
                        Vous n'avez pas de compte? 
                        <a href="signup.html" class="link-to-signup-in-login">
                            S'inscrire
                        </a>
                    </div>
                </div>
            </div>

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
<footer class="mg-footer">
   <div class="mg-footer-widget">
      <div class="container">
         <div class="row">
            <div class="col-md-4 col-sm-6">
               <div class="widget">
                  <h2 class="mg-widget-title">HÉBERGEMENT</h2>


                  <ul class="list-layout">
                     <li><a href="Why%20Host.html" class="link-contrast">Pourquoi héberger</a></li>
                     <li><a href="Responsible%20Hosting.html" class="link-contrast">Hébergement responsable</a></li>
                     <li><a href="Trust%20%26%20Safety.html" class="link-contrast">Confiance &amp; sécurité</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-md-4 col-sm-6">
               <div class="widget">
                  <h2 class="mg-widget-title">Empresa</h2>
                  <ul class="list-layout">
                     <li><a href="About%20us.html" class="link-contrast">About Us</a></li>
                     <li><a href="Polices.html" class="link-contrast">Polices</a></li>
                     <li><a href="Terms.html" class="link-contrast">Terms</a></li>
                     <li><a href="Privacy.html" class="link-contrast">Privacy</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-md-4 col-sm-6">
               <div class="widget">
                  <form>
                     <select class="form-control footer-select" aria-labelledby="language-selector-label" id="language_footer" name="language">
                        <option value="en"  > English</option>
                        <option value="ar"  > عربى</option>
                        <option value="fr"  > Français</option>
                     </select>
                     <p>
                        <select class="form-control footer-select" aria-labelledby="language-selector-label" id="currency_footer" name="language">
                           <option value="USD" selected > USD</option>
                           <option value="GBP"  > GBP</option>
                           <option value="EUR"  > EUR</option>
                           <option value="AUD"  > AUD</option>
                        </select>
                     </p>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="mg-copyright">
      <div class="container">
         <div class="row">

            <div class="col-md-6">
               <ul class="mg-footer-nav">
                  <li>© Vacation Rental, Inc.</li>
               </ul>
            </div>
            <div class="col-md-6">
               <ul class="list-layout list-inline pull-right">
                  <link href="#" itemprop="url">
                  <meta content="" itemprop="logo">
                  <li>
                     <a href="#" class="link-contrast footer-icon-container" target="_blank">
                        <i class="fa pad-top-4 fa-facebook"></i>
                     </a>
                  </li>
                  <li>
                     <a href="#" class="link-contrast footer-icon-container" target="_blank">
                        <i class="fa pad-top-4 fa-google-plus"></i>
                     </a>
                  </li>
                  <li>
                     <a href="#" class="link-contrast footer-icon-container" target="_blank">
                        <i class="fa pad-top-4 fa-twitter"></i>
                     </a>
                  </li>
                  <li>
                     <a href="#" class="link-contrast footer-icon-container" target="_blank">
                        <i class="fa pad-top-4 fa-linkedin"></i>
                     </a>
                  </li>
                  <li>
                     <a href="#" class="link-contrast footer-icon-container" target="_blank">
                        <i class="fa pad-top-4 fa-pinterest"></i>
                     </a>
                  </li>
                  <li>
                     <a href="#" class="link-contrast footer-icon-container" target="_blank">
                        <i class="fa pad-top-4 fa-youtube"></i>
                     </a>
                  </li>
                  <li>
                     <a href="#" class="link-contrast footer-icon-container" target="_blank">
                        <i class="fa pad-top-4 fa-instagram"></i>
                     </a>
                  </li>

               </ul>
            </div>
         </div>

      </div>
   </div>
</footer>
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
<script src="public/front/js/jquery.js"></script>

<script src="public/front/js/bootstrap.js"></script>

<script type="text/javascript" src='https://maps.google.com/maps/api/js?key=AIzaSyBYscmIGBbHydud3Vd_3HcvF_ZiBXX6uZw&amp;sensor=false&amp;libraries=places'></script>

<script src="public/front/js/locationpicker.jquery.min.js"></script>
<script src="public/front/js/jquery-ui.js"></script>
<script src="public/front/js/bootbox.min.js"></script>
<script src="public/front/js/front.js"></script>
<script src="public/front/js/jquery.sidr.js"></script>

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
<script src="public/front/js/jquery.validate.min.js"></script>
<script src="public/front/js/ninja/ninja-slider.js"></script>
<script src="public/front/js/bootstrap-slider.js"></script>
<script src="public/front/js/selectFx.js"></script>
<script src="public/front/js/admin.js"></script>
<!--Anything Slider js -->
<!-- Anything Slider optional plugins -->
<script src="public/front/anything/js/jquery.easing.1.2.js"></script>
<!-- http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js -->
<script src="public/front/anything/js/swfobject.js"></script>


<!-- AnythingSlider -->
<script src="public/front/anything/js/jquery.anythingslider.js"></script>

<!-- AnythingSlider video extension; optional, but needed to control video pause/play -->
<script src="public/front/anything/js/jquery.anythingslider.video.js"></script>
<script type="text/javascript">
    $(document).ready( function(){
        $(document).on('change', '.day-of-birth', function (){
            $('#day-of-birth').val($('#user_birthday_year').val()+'-'+$('#user_birthday_month').val()+'-'+$('#user_birthday_day').val());



        });

    });
</script>
</body>

<!-- Mirrored from vrent.techvill.net/login by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Dec 2018 22:22:49 GMT -->
</html>
<script type="text/javascript">

    jQuery.validator.addMethod("laxEmail", function(value, element) {
        // allow any non-whitespace characters as the host part
        return this.optional( element ) || /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test( value );
    }, 's\'il vous plait saisi email valid.');

    $(document).ready(function () {

        $('#login_form').validate({
            rules: {
                email: {
                    required: true,
                    maxlength: 255,
                    laxEmail: true
                },
                password: {
                    required: true
                }
            }
        });

    });
</script>

