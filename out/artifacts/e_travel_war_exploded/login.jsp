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
    <link rel="shortcut icon" href="/e-travel/public/front/images/logos/favicon.ico">
    <title>Log In  </title>

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
                    <form id="login_form" method="post" action="/e-travel/signin" class='signup-form login-form' accept-charset='UTF-8'>
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
                        <a href="signup" class="link-to-signup-in-login">
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
<%@ include file="/WEB-INF/layouts/footer.jsp" %>

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

