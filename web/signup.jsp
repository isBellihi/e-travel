<%--
  Created by IntelliJ IDEA.
  User: Win5
  Date: 17/12/2018
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="js csstransforms csstransforms3d csstransitions" lang="en">

<!-- Mirrored from vrent.techvill.net/signup by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 17 Dec 2018 15:20:14 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="public/front/images/logos/favicon.ico">
    <title>Signup  </title>

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
                    <div class="row col-center">
                        <a href="facebookLogin" class="btn btn-facebook" style="padding: 8px 8px !important">
                            <div class="responsive-content" style="font-size: 13px !important"><i class="fa fa-facebook pad-r-3"></i>Inscreva-se no Facebook</div>
                        </a>
                        <!--<div class="clearfix"></div>-->
                        <a href="https://accounts.google.com/o/oauth2/auth?client_id=155732176097-s2b8liiqj6v8l39r25baq31vm3adg8uv.apps.googleusercontent.com&amp;redirect_uri=http%3A%2F%2Fvrent.techvill.net%2FgoogleAuthenticate&amp;scope=openid+profile+email&amp;response_type=code&amp;state=HVL6XCJSummPiDIuxOx6xchMdR8Ytg4Hnb4DkGcr" class="btn btn-google" style="padding: 8px 8px !important;">
                            <div class="responsive-content" style="font-size: 13px !important">
                                <i class="fa fa-google-plus pad-r-4"></i>
                                Inscreva-se no Google
                            </div>
                        </a>

                        <div class="col-md-12 cls-or">
                            <label>ou</label>
                        </div>
                    </div>

                    <form id="signup_form" name="signup_form" method="post" action="http://vrent.techvill.net/create" class='signup-form login-form' accept-charset='UTF-8' onsubmit="return ageValidate();">
                        <div class="row">
                            <input type="hidden" name='email_signup' id='form'>
                            <div class="col-sm-12">
                                <input type="text" class='form-control' value="" name='first_name' id='first_name' placeholder='Primeiro nome'>
                            </div>
                            <div class="col-sm-12">
                                <input type="text" class='form-control' value="" name='last_name' id='last_name' placeholder='Último nome'>
                            </div>
                            <div class="col-sm-12">
                                <input type="text" class='form-control' value="" name='email' id='email' placeholder='O email'>
                                <span class="text-danger">
                    <label id='emailError'></label>
                  </span>
                            </div>
                            <div class="col-sm-12">
                                <input type="password" class='form-control' name='password' id='password' placeholder='Senha'>
                            </div>
                            <div class="col-sm-12">
                                <label class="l-pad-none">Aniversário <span style="color: red !important;">*</span></label>
                            </div>
                            <div class="col-sm-12">
                                <p class="error-tag"></p>
                            </div>
                            <div class="col-sm-12">
                                <div class="col-sm-4 l-pad-none r-pad-none">
                                    <select name='birthday_month' class='form-control day-of-birth' id='user_birthday_month'>
                                        <option value=''>Mês</option>
                                        <option value="1" >January</option>
                                        <option value="2" >February</option>
                                        <option value="3" >March</option>
                                        <option value="4" >April</option>
                                        <option value="5" >May</option>
                                        <option value="6" >June</option>
                                        <option value="7" >July</option>
                                        <option value="8" >August</option>
                                        <option value="9" >September</option>
                                        <option value="10" >October</option>
                                        <option value="11" >November</option>
                                        <option value="12" >December</option>
                                    </select>
                                </div>
                                <div class="col-sm-4 l-pad-none r-pad-none">
                                    <select name='birthday_day' class='form-control day-of-birth' id='user_birthday_day'>
                                        <option value=''>Dia</option>
                                        <option value="1" >1</option>
                                        <option value="2" >2</option>
                                        <option value="3" >3</option>
                                        <option value="4" >4</option>
                                        <option value="5" >5</option>
                                        <option value="6" >6</option>
                                        <option value="7" >7</option>
                                        <option value="8" >8</option>
                                        <option value="9" >9</option>
                                        <option value="10" >10</option>
                                        <option value="11" >11</option>
                                        <option value="12" >12</option>
                                        <option value="13" >13</option>
                                        <option value="14" >14</option>
                                        <option value="15" >15</option>
                                        <option value="16" >16</option>
                                        <option value="17" >17</option>
                                        <option value="18" >18</option>
                                        <option value="19" >19</option>
                                        <option value="20" >20</option>
                                        <option value="21" >21</option>
                                        <option value="22" >22</option>
                                        <option value="23" >23</option>
                                        <option value="24" >24</option>
                                        <option value="25" >25</option>
                                        <option value="26" >26</option>
                                        <option value="27" >27</option>
                                        <option value="28" >28</option>
                                        <option value="29" >29</option>
                                        <option value="30" >30</option>
                                        <option value="31" >31</option>
                                    </select>
                                </div>
                                <div class="col-sm-4 l-pad-none r-pad-none">
                                    <select name='birthday_year' class='form-control day-of-birth' id='user_birthday_year'>
                                        <option value=''>Ano</option>
                                        <option value="2018">2018</option>
                                        <option value="2017">2017</option>
                                        <option value="2016">2016</option>
                                        <option value="2015">2015</option>
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                        <option value="2011">2011</option>
                                        <option value="2010">2010</option>
                                        <option value="2009">2009</option>
                                        <option value="2008">2008</option>
                                        <option value="2007">2007</option>
                                        <option value="2006">2006</option>
                                        <option value="2005">2005</option>
                                        <option value="2004">2004</option>
                                        <option value="2003">2003</option>
                                        <option value="2002">2002</option>
                                        <option value="2001">2001</option>
                                        <option value="2000">2000</option>
                                        <option value="1999">1999</option>
                                        <option value="1998">1998</option>
                                        <option value="1997">1997</option>
                                        <option value="1996">1996</option>
                                        <option value="1995">1995</option>
                                        <option value="1994">1994</option>
                                        <option value="1993">1993</option>
                                        <option value="1992">1992</option>
                                        <option value="1991">1991</option>
                                        <option value="1990">1990</option>
                                        <option value="1989">1989</option>
                                        <option value="1988">1988</option>
                                        <option value="1987">1987</option>
                                        <option value="1986">1986</option>
                                        <option value="1985">1985</option>
                                        <option value="1984">1984</option>
                                        <option value="1983">1983</option>
                                        <option value="1982">1982</option>
                                        <option value="1981">1981</option>
                                        <option value="1980">1980</option>
                                        <option value="1979">1979</option>
                                        <option value="1978">1978</option>
                                        <option value="1977">1977</option>
                                        <option value="1976">1976</option>
                                        <option value="1975">1975</option>
                                        <option value="1974">1974</option>
                                        <option value="1973">1973</option>
                                        <option value="1972">1972</option>
                                        <option value="1971">1971</option>
                                        <option value="1970">1970</option>
                                        <option value="1969">1969</option>
                                        <option value="1968">1968</option>
                                        <option value="1967">1967</option>
                                        <option value="1966">1966</option>
                                        <option value="1965">1965</option>
                                        <option value="1964">1964</option>
                                        <option value="1963">1963</option>
                                        <option value="1962">1962</option>
                                        <option value="1961">1961</option>
                                        <option value="1960">1960</option>
                                        <option value="1959">1959</option>
                                        <option value="1958">1958</option>
                                        <option value="1957">1957</option>
                                        <option value="1956">1956</option>
                                        <option value="1955">1955</option>
                                        <option value="1954">1954</option>
                                        <option value="1953">1953</option>
                                        <option value="1952">1952</option>
                                        <option value="1951">1951</option>
                                        <option value="1950">1950</option>
                                        <option value="1949">1949</option>
                                        <option value="1948">1948</option>
                                        <option value="1947">1947</option>
                                        <option value="1946">1946</option>
                                        <option value="1945">1945</option>
                                        <option value="1944">1944</option>
                                        <option value="1943">1943</option>
                                        <option value="1942">1942</option>
                                        <option value="1941">1941</option>
                                        <option value="1940">1940</option>
                                        <option value="1939">1939</option>
                                        <option value="1938">1938</option>
                                        <option value="1937">1937</option>
                                        <option value="1936">1936</option>
                                        <option value="1935">1935</option>
                                        <option value="1934">1934</option>
                                        <option value="1933">1933</option>
                                        <option value="1932">1932</option>
                                        <option value="1931">1931</option>
                                        <option value="1930">1930</option>
                                        <option value="1929">1929</option>
                                        <option value="1928">1928</option>
                                        <option value="1927">1927</option>
                                        <option value="1926">1926</option>
                                        <option value="1925">1925</option>
                                        <option value="1924">1924</option>
                                        <option value="1923">1923</option>
                                        <option value="1922">1922</option>
                                        <option value="1921">1921</option>
                                        <option value="1920">1920</option>
                                        <option value="1919">1919</option>
                                    </select>
                                </div>
                                <input type="hidden" id="day-of-birth" name="date_of_birth" value=""/>
                                <span class="text-danger">
                    <label id='dobError'></label>
                  </span>
                            </div>

                            <div class="col-sm-12 pad-t-5">
                                <input name="btn" id="btn" type='submit' value='Inscrever-se' class='btn ex-btn btn-block btn-large'>
                            </div>
                        </div>
                    </form>

                    <div class="col-sm-12 mrg-top-25">
                        Já é um Vacation Rental membro?
                        <a href="logind41d.html?" class="modal-link link-to-login-in-signup" data-modal-href="/login_modal?" data-modal-type="login">
                            Entrar
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="sidr" class="sidenav" style="display: none;">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
    <p>&nbsp;</p>
    <a href="signup.html">Inscrever-se</a>
    <a href="login.html">Entrar</a>
    <a href="login.html">Liste seu espaço</a>
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

<!-- Mirrored from vrent.techvill.net/signup by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 17 Dec 2018 15:20:15 GMT -->
</html>

<script type="text/javascript">

    $('select').on('change', function() {
        var dobError = '';
        var day = document.getElementById("user_birthday_day").value;
        var month = document.getElementById("user_birthday_month").value;
        var y = document.getElementById("user_birthday_year").value;
        var year = parseInt(y);
        var year2 = signup_form.birthday_year;
        var age = 18;

        var setDate = new Date(year + age, month - 1, day);
        var currdate = new Date();
        if (day == '' || month == '' || y == '') {
            $('#dobError').html('<label class="text-danger">This field is required.</label>');
            year2.focus();
            return false;
        }
        //window.alert(setDate);
        else if (setDate > currdate) {
            //window.alert(setDate);
            $('#dobError').html('<label class="text-danger">Age must be greater than 18.</label>');
            year2.focus();
            return false;
            // $('#dobError').html('<label class="text-danger">Age must be greater than 18.</label>');
            // $('#user_birthday_day').addClass('has-error');
            // $('#user_birthday_month').addClass('has-error');
            // $('#user_birthday_year').addClass('has-error');
        }
        else
        {
            $('#dobError').html('<span class="text-danger"></span>');
            return true;
        }
    });

    function ageValidate()
    {
        var dobError = '';
        var day = document.getElementById("user_birthday_month").value;
        var month = document.getElementById("user_birthday_day").value;
        var y = document.getElementById("user_birthday_year").value;
        var year = parseInt(y);
        var year2 = signup_form.birthday_year;
        var age = 18;

        var setDate = new Date(year + age, month - 1, day);
        var currdate = new Date();
        if (day == '' || month == '' || y == '') {
            $('#dobError').html('<label class="text-danger">This field is required.</label>');
            year2.focus();
            return false;
        }
        //window.alert(setDate);
        else if (setDate > currdate) {
            //window.alert(setDate);
            $('#dobError').html('<label class="text-danger">Age must be greater than 18.</label>');
            year2.focus();
            return false;
            // $('#dobError').html('<label class="text-danger">Age must be greater than 18.</label>');
            // $('#user_birthday_day').addClass('has-error');
            // $('#user_birthday_month').addClass('has-error');
            // $('#user_birthday_year').addClass('has-error');
        }
        else
        {
            $('#dobError').html('<span class="text-danger"></span>');
            return true;
        }
    }

    jQuery.validator.addMethod("laxEmail", function(value, element) {
        return this.optional( element ) || /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test( value );
    }, 'Please enter a valid email address.');

    $(document).ready(function () {

        $('#signup_form').validate({
            rules: {
                first_name: {
                    required: true,
                    maxlength: 255
                },
                last_name: {
                    required: true,
                    maxlength: 255
                },
                email: {
                    required: true,
                    maxlength: 255,
                    laxEmail: true
                },
                password: {
                    required: true,
                    minlength: 6
                }

            }
        });


        $('#email').blur(function(){
            var emailError = '';
            var email = $('#email').val();
            //var email2 = signup_form.email;
            var _token = $('input[name="_token"]').val();
            $.ajax({
                url:"http://vrent.techvill.net/checkUser/check",
                method:"POST",
                data:{email:email, _token:_token},
                success:function(result)
                {
                    if(result == 'not_unique')
                    {
                        $('#emailError').html('<label class="text-danger">Email address is already Existed.</label>');
                        $('#email').addClass('has-error');
                        //email2.focus();
                        $('#btn').attr('disabled', 'disabled');
                    }
                    else
                    {
                        $('#emailError').html('<label class="text-success"></label>');
                        $('#email').removeClass('has-error');
                        $('#btn').attr('disabled', false);
                    }
                }
            })

        });

    });
</script>


