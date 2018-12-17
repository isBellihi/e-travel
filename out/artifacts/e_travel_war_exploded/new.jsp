<%--
  Created by IntelliJ IDEA.
  User: Win5
  Date: 17/12/2018
  Time: 16:06
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
    <link rel="shortcut icon" href="http://vrent.techvill.net/public/front/images/logos/favicon.ico">
    <title>Property Listing  </title>

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
 ag {
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
                <a class="navbar-brand" href="http://vrent.techvill.net"><img style="height: 27px; width: 120px;" src="http://vrent.techvill.net/public/front/images/logos/logo.png" alt="logo"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <form action="http://vrent.techvill.net/s" id="head-form" class="navbar-form navbar-left search-form">
                    <!-- <form action="http://vrent.techvill.net/search" id="head-form" class="navbar-form navbar-left search-form"> -->
                    <div class="form-group sm-dropdown">
                        <input type="text" name="location" id="header-search-form" class="form-control" placeholder="où allez-vous?" style="width:200px;margin-bottom:1px;">
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
                    <li><a href="http://vrent.techvill.net/dashboard"><div class="user-div"><img src="http://vrent.techvill.net/public/images/user_pic-225x225.png" alt="" title="" style="width:100%;"></div></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">aaaa <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="http://vrent.techvill.net/dashboard">Tableau de bord</a></li>
                            <li><a href="http://vrent.techvill.net/inbox">Boîte de réception</a></li>
                            <li><a href="http://vrent.techvill.net/properties">Vos offres</a></li>
                            <li><a href="http://vrent.techvill.net/my_bookings">Réservations de propriété</a></li>
                            <li><a href="http://vrent.techvill.net/trips/active">Vos voyages</a></li>
                            <li><a href="http://vrent.techvill.net/users/profile">Editer le profil</a></li>
                            <li><a href="http://vrent.techvill.net/users/account_preferences">Compte</a></li>
                            <li><a href="http://vrent.techvill.net/logout">Connectez - Out</a></li>
                        </ul>
                    </li>
                    <li><a href="http://vrent.techvill.net/property/create" class="btn ex-btn navbar-btn topbar-btn">Listez votre espace</a></li>
                </ul>

            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>


<div class="container margin-top40 mb30">
    <div class="col-md-3">
        <div class="row">
            <div class="naviga_tion_sidebar">
                <ul class="nav nav-pills nav-stacked">
                    <li class=""><a href='http://vrent.techvill.net/listing/18/basics'><div class="radius"><span class="margin-top6">1</span></div>Notions de base</a></li>
                    <li class=""><a href='http://vrent.techvill.net/listing/18/description'><div class="radius"><span class="margin-top6">2</span></div>La description</a></li>
                    <li class=""><a href='http://vrent.techvill.net/listing/18/location'><div class="radius"><span class="margin-top6">3</span></div>Emplacement</a></li>
                    <li class=""><a href='http://vrent.techvill.net/listing/18/amenities'><div class="radius"><span class="margin-top6">4</span></div>Équipements</a></li>
                    <li class=""><a href='http://vrent.techvill.net/listing/18/photos'><div class="radius"><span class="margin-top6">5</span></div>Photos</a></li>
                    <li class="lnk-active"><a href='http://vrent.techvill.net/listing/18/pricing'><div class="radius"><span class="margin-top6">6</span></div>Prix</a></li>
                    <li class=""><a href='http://vrent.techvill.net/listing/18/booking'><div class="radius"><span class="margin-top6">7</span></div>Réservation</a></li>
                    <li class=""><a href='http://vrent.techvill.net/listing/18/calendar'><div class="radius"><span class="margin-top6">8</span></div>Calendrier</a></li>
                </ul>
            </div>
        </div>
    </div>    <form id="lis_pricing" method="post" action="http://vrent.techvill.net/listing/18/pricing" class='signup-form login-form' accept-charset='UTF-8'>
    <div class="col-md-9">
        <div class="row">
            <h4>Prix de base</h4>
            <div class="col-md-8">
                <label for="listing_price_native" class="label-large">Prix par nuit <span style="color: red !important;">*</span></label>
                <div class="input-addon">
                    <span class="input-prefix pay-currency">$</span>
                    <input type="text" data-suggested="" id="price-night" value="" name="price" class="money-input">
                </div>
                <span class="text-danger"></span>
            </div>
            <div class="col-md-8">
                <label class="label-large">Devise</label>
                <select id='price-select-currency_code' name="currency_code" class='form-control'>
                    <option value="USD" selected>USD</option>
                    <option value="GBP" >GBP</option>
                    <option value="EUR" >EUR</option>
                    <option value="AUD" >AUD</option>
                    <option value="SGD" >SGD</option>
                    <option value="SEK" >SEK</option>
                    <option value="DKK" >DKK</option>
                    <option value="MXN" >MXN</option>
                    <option value="BRL" >BRL</option>
                    <option value="MYR" >MYR</option>
                    <option value="PHP" >PHP</option>
                    <option value="CHF" >CHF</option>
                    <option value="INR" >INR</option>
                    <option value="ARS" >ARS</option>
                    <option value="CAD" >CAD</option>
                    <option value="CNY" >CNY</option>
                    <option value="CZK" >CZK</option>
                    <option value="HKD" >HKD</option>
                    <option value="HUF" >HUF</option>
                    <option value="IDR" >IDR</option>
                    <option value="ILS" >ILS</option>
                    <option value="JPY" >JPY</option>
                    <option value="KRW" >KRW</option>
                    <option value="NOK" >NOK</option>
                    <option value="NZD" >NZD</option>
                    <option value="PLN" >PLN</option>
                    <option value="RUB" >RUB</option>
                    <option value="THB" >THB</option>
                    <option value="TRY" >TRY</option>
                    <option value="TWD" >TWD</option>
                    <option value="VND" >VND</option>
                    <option value="ZAR" >ZAR</option>
                </select>
            </div>
            <div class="col-md-8">
                <p id="js-set-long-term-prices" class="row-space-top-6 text-center text-muted set-long-term-prices">
                    Vous pouvez offrir des rabais pour des séjours plus longs en définissant  <a data-prevent-default="" href="#" id="show_long_term">Hebdomadaire et mensuel</a> des prix.
                </p>
                <hr class="row-space-top-6 row-space-5 set-long-term-prices">
            </div>
        </div>
        <div class="row display-off" id="long-term-div">
            <h4>Prix à long terme</h4>
            <div class="col-md-8">
                <label for="listing_price_native" class="label-large">Pourcentage de réduction hebdomadaire (%)</label>
                <div class="input-addon">
                    <!--<span class="input-prefix pay-currency">$</span>-->
                    <input type="text" data-suggested="" id="price-week" value="0" name="weekly_discount" data-saving="long_price" class="money-input">
                    <span class="text-danger"></span>
                </div>
            </div>
            <div class="col-md-8">
                <label for="listing_price_native" class="label-large">Rabais mensuel Pourcentage (%)</label>
                <div class="input-addon">
                    <!--<span class="input-prefix pay-currency">$</span>-->
                    <input type="text" data-suggested="₹16905" id="price-month" class="money-input" value="0" name="monthly_discount" data-saving="long_price">
                    <span class="text-danger"></span>
                </div>
            </div>
        </div>
        <div class="row">
            <h4>Options de tarification supplémentaires</h4>
            <div class="col-md-12">
                <label for="listing_cleaning_fee_native_checkbox" class="label-large label-inline">
                    <input type="checkbox" data-extras="true" class="pricing_checkbox" data-rel="cleaning" >
                    Frais de nettoyage
                </label>
            </div>
            <div id="cleaning" class="display-off">
                <div class="col-md-12">
                    <div class="col-md-4 l-pad-none">
                        <div class="input-addon">
                            <span class="input-prefix pay-currency">$</span>
                            <input type="text" data-extras="true" id="price-cleaning" value="0" name="cleaning_fee" class="money-input" data-saving="additional-saving">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <label for="listing_cleaning_fee_native_checkbox" class="label-large label-inline">
                    <input type="checkbox" class="pricing_checkbox" data-rel="additional-guests" >
                    Invités supplémentaires
                </label>
            </div>
            <div id="additional-guests" class="display-off">
                <div class="col-md-12">
                    <div class="col-md-4 l-pad-none">
                        <div class="input-addon">
                            <span class="input-prefix pay-currency">$</span>
                            <input type="text" data-extras="true" value="0" id="price-extra_person" name="guest_fee" class="money-input" data-saving="additional-saving">
                        </div>
                    </div>
                    <div class="col-md-4 txt-right">
                        <label class="label-large">Pour chaque invité après</label>
                    </div>
                    <div class="col-md-4">
                        <select id="price-select-guests_included" name="guest_after" data-saving="additional-saving" class="form-control">
                            <option value="1" >
                                1
                            </option>
                            <option value="2" >
                                2
                            </option>
                            <option value="3" >
                                3
                            </option>
                            <option value="4" >
                                4
                            </option>
                            <option value="5" >
                                5
                            </option>
                            <option value="6" >
                                6
                            </option>
                            <option value="7" >
                                7
                            </option>
                            <option value="8" >
                                8
                            </option>
                            <option value="9" >
                                9
                            </option>
                            <option value="10" >
                                10
                            </option>
                            <option value="11" >
                                11
                            </option>
                            <option value="12" >
                                12
                            </option>
                            <option value="13" >
                                13
                            </option>
                            <option value="14" >
                                14
                            </option>
                            <option value="15" >
                                15
                            </option>
                            <option value="16" >
                                16+
                            </option>

                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <label for="listing_cleaning_fee_native_checkbox" class="label-large label-inline">
                    <input type="checkbox" class="pricing_checkbox" data-rel="security" >
                    Dépôt de garantie
                </label>
            </div>
            <div id="security" class="display-off">
                <div class="col-md-12">
                    <div class="col-md-4 l-pad-none">
                        <div class="input-addon">
                            <span class="input-prefix pay-currency">$</span>
                            <input type="text" class="money-input" data-extras="true" value="0" id="price-security" name="security_fee" class="autosubmit-text input-stem input-large" data-saving="additional-saving">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <label for="listing_cleaning_fee_native_checkbox" class="label-large label-inline">
                    <input type="checkbox" class="pricing_checkbox" data-rel="weekend" >
                    Prix du week-end
                </label>
            </div>
            <div id="weekend" class="display-off">
                <div class="col-md-12">
                    <div class="col-md-4 l-pad-none">
                        <div class="input-addon">
                            <span class="input-prefix pay-currency">$</span>
                            <input type="text" data-extras="true" value="0" id="price-weekend" name="weekend_price" class="money-input" data-saving="additional-saving">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mrg-top-25">
            <div class="col-md-6 text-left">
                <a data-prevent-default="" href="http://vrent.techvill.net/listing/18/photos" class="btn btn-large btn-primary">Arrière</a>
            </div>
            <div class="col-md-6 text-right">
                <button type="submit" class="btn btn-large btn-primary next-section-button">
                    Prochain
                </button>
            </div>
        </div>
    </div>
</form>
</div>


<div id="sidr" class="sidenav" style="display: none;">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
    <p>&nbsp;</p>
    <form action="http://vrent.techvill.net/search" id="head-form" class="navbar-form navbar-left search-form">
        <div class="form-group sm-dropdown">
            <input type="text" name="location" id="sidenav-search-form" class="form-control" placeholder="où allez-vous?" style="width:200px;margin-bottom:1px;">
            <div id="sidenav-search-drop-down" class="sm-dropdown-content">
                <div class="col-md-12" style="padding:0px 5px;">
                    <div class="col-md-4" style="padding:0px 5px;">
                        <label class="nav-label">Enregistrement</label>
                        <input type="text" name="checkin" id="sidenav-search-checkin" class="nav-form-control" autocomplete="off" readonly="readonly">
                    </div>
                    <div class="col-md-4" style="padding:0px 5px;">
                        <label class="nav-label">Check-out</label>
                        <input type="text" name="checkout" id="sidenav-search-checkout" class="nav-form-control" autocomplete="off" readonly="readonly">
                    </div>
                    <div class="col-md-4" style="padding:0px 5px;">
                        <label class="nav-label">Invités</label>
                        <select class="nav-form-control" id="sidenav-search-guests" name="guests">
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
    <a href="http://vrent.techvill.net/dashboard">Tableau de bord</a>
    <a href="http://vrent.techvill.net/properties">Vos offres</a>
    <a href="http://vrent.techvill.net/my_bookings">Réservations de propriété</a>
    <a href="http://vrent.techvill.net/trips/active">Vos voyages</a>
    <a href="http://vrent.techvill.net/users/profile">Editer le profil</a>
    <a href="http://vrent.techvill.net/users/account_preferences">Compte</a>
    <a href="http://vrent.techvill.net/logout">Connectez - Out</a>
    <a href="http://vrent.techvill.net/property/create">Listez votre espace</a>
</div>
<footer class="mg-footer">
    <div class="mg-footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="widget">
                        <h2 class="mg-widget-title">Hébergement</h2>
                        <ul class="list-layout">
                            <li><a href="http://vrent.techvill.net/Why Host" class="link-contrast">Why Host</a></li>
                            <li><a href="http://vrent.techvill.net/Responsible Hosting" class="link-contrast">Responsible Hosting</a></li>
                            <li><a href="http://vrent.techvill.net/Trust &amp; Safety" class="link-contrast">Trust &amp; Safety</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="widget">
                        <h2 class="mg-widget-title">Compagnie</h2>
                        <ul class="list-layout">
                            <li><a href="http://vrent.techvill.net/About us" class="link-contrast">About Us</a></li>
                            <li><a href="http://vrent.techvill.net/Polices" class="link-contrast">Polices</a></li>
                            <li><a href="http://vrent.techvill.net/Terms" class="link-contrast">Terms</a></li>
                            <li><a href="http://vrent.techvill.net/Privacy" class="link-contrast">Privacy</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="widget">
                        <form>
                            <select class="form-control footer-select" aria-labelledby="language-selector-label" id="language_footer" name="language">
                                <option value="en"  > English</option>
                                <option value="ar"  > عربى</option>
                                <option value="ch"  > 中文 (繁體)</option>
                                <option value="fr" selected > Français</option>
                                <option value="ru"  > Русский</option>
                                <option value="es"  > Español</option>
                                <option value="tr"  > Türkçe</option>
                            </select>
                            <p>
                                <select class="form-control footer-select" aria-labelledby="language-selector-label" id="currency_footer" name="language">
                                    <option value="USD" selected > USD</option>
                                    <option value="GBP"  > GBP</option>
                                    <option value="EUR"  > EUR</option>
                                    <option value="AUD"  > AUD</option>
                                    <option value="SGD"  > SGD</option>
                                    <option value="SEK"  > SEK</option>
                                    <option value="DKK"  > DKK</option>
                                    <option value="MXN"  > MXN</option>
                                    <option value="BRL"  > BRL</option>
                                    <option value="MYR"  > MYR</option>
                                    <option value="PHP"  > PHP</option>
                                    <option value="CHF"  > CHF</option>
                                    <option value="INR"  > INR</option>
                                    <option value="ARS"  > ARS</option>
                                    <option value="CAD"  > CAD</option>
                                    <option value="CNY"  > CNY</option>
                                    <option value="CZK"  > CZK</option>
                                    <option value="HKD"  > HKD</option>
                                    <option value="HUF"  > HUF</option>
                                    <option value="IDR"  > IDR</option>
                                    <option value="ILS"  > ILS</option>
                                    <option value="JPY"  > JPY</option>
                                    <option value="KRW"  > KRW</option>
                                    <option value="NOK"  > NOK</option>
                                    <option value="NZD"  > NZD</option>
                                    <option value="PLN"  > PLN</option>
                                    <option value="RUB"  > RUB</option>
                                    <option value="THB"  > THB</option>
                                    <option value="TRY"  > TRY</option>
                                    <option value="TWD"  > TWD</option>
                                    <option value="VND"  > VND</option>
                                    <option value="ZAR"  > ZAR</option>
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
                        <link href="" itemprop="url">
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
    var APP_URL = "http://vrent.techvill.net";
    var USER_ID = "4";
</script>
<script src="http://vrent.techvill.net/public/front/js/jquery.js"></script>

<script src="http://vrent.techvill.net/public/front/js/bootstrap.js"></script>

<script type="text/javascript" src='https://maps.google.com/maps/api/js?key=AIzaSyBYscmIGBbHydud3Vd_3HcvF_ZiBXX6uZw&sensor=false&libraries=places'></script>

<script src="http://vrent.techvill.net/public/front/js/locationpicker.jquery.min.js"></script>
<script src="http://vrent.techvill.net/public/front/js/jquery-ui.js"></script>
<script src="http://vrent.techvill.net/public/front/js/bootbox.min.js"></script>
<script src="http://vrent.techvill.net/public/front/js/front.js"></script>
<script src="http://vrent.techvill.net/public/front/js/jquery.sidr.js"></script>

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
<script type="text/javascript">
    $(document).on('change', '.pricing_checkbox', function(){
        if(this.checked){
            var name = $(this).attr('data-rel');
            $('#'+name).show();
        }else{
            var name = $(this).attr('data-rel');
            $('#'+name).hide();
            $('#price-'+name).val(0);
        }
    });
    $(document).on('click', '#show_long_term', function(){
        $('#js-set-long-term-prices').hide();
        $('#long-term-div').show();
    });
    $(document).on('change', '#price-select-currency_code', function(){
        var currency = $(this).val();
        var dataURL = 'http://vrent.techvill.net/currency-symbol';
        //console.log(currency);
        $.ajax({
            url: dataURL,
            data: {'currency': currency},
            type: 'post',
            async: false,
            dataType: 'json',
            success: function (result) {
                if(result.success == 1)
                    $('.pay-currency').html(result.symbol);
            },
            error: function (request, error) {
                // This callback function will trigger on unsuccessful action
                console.log(error);
            }
        });
    });
</script>
<script src="http://vrent.techvill.net/public/front/js/jquery.validate.min.js"></script>
<script src="http://vrent.techvill.net/public/front/js/ninja/ninja-slider.js"></script>
<script src="http://vrent.techvill.net/public/front/js/bootstrap-slider.js"></script>
<script src="http://vrent.techvill.net/public/front/js/selectFx.js"></script>
<script src="http://vrent.techvill.net/public/front/js/admin.js"></script>
<!--Anything Slider js -->
<!-- Anything Slider optional plugins -->
<script src="http://vrent.techvill.net/public/front/anything/js/jquery.easing.1.2.js"></script>
<!-- http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js -->
<script src="http://vrent.techvill.net/public/front/anything/js/swfobject.js"></script>


<!-- AnythingSlider -->
<script src="http://vrent.techvill.net/public/front/anything/js/jquery.anythingslider.js"></script>

<!-- AnythingSlider video extension; optional, but needed to control video pause/play -->
<script src="http://vrent.techvill.net/public/front/anything/js/jquery.anythingslider.video.js"></script>
<script type="text/javascript">
    $(document).ready( function(){
        $(document).on('change', '.day-of-birth', function (){
            $('#day-of-birth').val($('#user_birthday_year').val()+'-'+$('#user_birthday_month').val()+'-'+$('#user_birthday_day').val());



        });

    });
</script>
</body>
</html>

<script type="text/javascript">
    $(document).ready(function () {

        $('#lis_pricing').validate({
            rules: {
                price: {
                    required: true,
                    number: true,
                    min: 5
                },
                weekly_discount: {
                    number: true,
                    max: 99,
                    min: 0
                },
                monthly_discount: {
                    number: true,
                    max: 99,
                    min: 0
                }
            }
        });

    });
</script>


