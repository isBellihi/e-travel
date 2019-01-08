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
       <div class="row col-center">
        <a href="facebookLogin" class="btn btn-facebook" style="padding: 8px 8px !important">
         <div class="responsive-content" style="font-size: 13px !important"><i class="fa fa-facebook pad-r-3"></i>Inscrivez vous avec Facebook</div>
       </a>
       <!--<div class="clearfix"></div>-->
       <a href="" class="btn btn-google" style="padding: 8px 8px !important;">
         <div class="responsive-content" style="font-size: 13px !important">
          <i class="fa fa-google-plus pad-r-4"></i>
          Inscrivez vous via google
        </div>
      </a>

      <div class="col-md-12 cls-or">
       <label>ou</label>
     </div>
   </div>

   <form id="signup_form" name="signup_form" method="post" action="/e-travel/signup" class='signup-form login-form' accept-charset='UTF-8' onsubmit="return ageValidate();">
    <div class="row">
     <div class="col-sm-12">
      <input type="text" class='form-control' value="" name='nom' id='first_name' placeholder='Nom'>
    </div>
    <div class="col-sm-12">
      <input type="text" class='form-control' value="" name='prenom' id='last_name' placeholder='Prénom'>
    </div>
    <div class="col-sm-12">
      <input type="text" class='form-control' value="" name='email' id='email' placeholder='Email'>
      <span class="text-danger">
       <label id='emailError'></label>
     </span>
   </div>
   <div class="col-sm-12">
    <input type="password" class='form-control' name='passwd' id='password' placeholder='mot de passe'>
  </div>
  <div class="col-sm-12">
    <input type="password" class='form-control' name='passwd1' id='password1' placeholder='confirmer le mot de passe'>
  </div>
  <div class="col-sm-12">
    <label class="l-pad-none">Date de Naissance <span style="color: red !important;">*</span></label>
  </div>
  <div class="col-sm-12">
    <p class="error-tag"></p>
  </div>
  <div class="col-sm-12">
    <div class="col-sm-4 l-pad-none r-pad-none">
     <select name='birthday_month' class='form-control day-of-birth' id='user_birthday_month'>
      <option value=''>Mois</option>
      <option value="01" >Janvier</option>
      <option value="02" >Février</option>
      <option value="03" >Mars</option>
      <option value="04" >Avril</option>
      <option value="05" >Mai</option>
      <option value="06" >Juillet</option>
      <option value="07" >Juillet</option>
      <option value="08" >Aout</option>
      <option value="09" >Septembre</option>
      <option value="10" >Octobre</option>
      <option value="11" >Novembre</option>
      <option value="12" >Decembre</option>
    </select>
  </div>
  <div class="col-sm-4 l-pad-none r-pad-none">
   <select name='birthday_day' class='form-control day-of-birth' id='user_birthday_day'>
    <option value=''>Journée</option><option value="01" >01</option>
    <option value="02" >02</option><option value="03" >03</option>
    <option value="04" >04</option><option value="05" >05</option>
    <option value="06" >06</option><option value="07" >07</option>
    <option value="08" >08</option><option value="09" >09</option>
    <option value="10" >10</option><option value="11" >11</option>
    <option value="12" >12</option><option value="13" >13</option>
    <option value="14" >14</option><option value="15" >15</option>
    <option value="16" >16</option><option value="17" >17</option>
    <option value="18" >18</option><option value="19" >19</option>
    <option value="20" >20</option><option value="21" >21</option>
    <option value="22" >22</option><option value="23" >23</option>
    <option value="24" >24</option><option value="25" >25</option>
    <option value="26" >26</option><option value="27" >27</option>
    <option value="28" >28</option><option value="29" >29</option>
    <option value="30" >30</option><option value="31" >31</option>
  </select>
</div>
<div class="col-sm-4 l-pad-none r-pad-none">
 <select name='birthday_year' class='form-control day-of-birth' id='user_birthday_year'>
  <option value=''>Année</option><option value="2018">2018</option>
  <option value="2010">2010</option><option value="2009">2009</option>
  <option value="2008">2008</option><option value="2007">2007</option>
  <option value="2006">2006</option><option value="2005">2005</option>
  <option value="2004">2004</option><option value="2003">2003</option>
  <option value="2002">2002</option><option value="2001">2001</option>
  <option value="2000">2000</option><option value="1999">1999</option>
  <option value="1998">1998</option><option value="1997">1997</option>
  <option value="1996">1996</option><option value="1995">1995</option>
  <option value="1994">1994</option><option value="1993">1993</option>
  <option value="1992">1992</option><option value="1991">1991</option>
  <option value="1990">1990</option><option value="1989">1989</option>
  <option value="1988">1988</option><option value="1987">1987</option>
  <option value="1986">1986</option><option value="1985">1985</option>
  <option value="1984">1984</option><option value="1983">1983</option>
  <option value="1982">1982</option><option value="1981">1981</option>
  <option value="1980">1980</option><option value="1979">1979</option>
  <option value="1978">1978</option><option value="1977">1977</option>
  <option value="1976">1976</option><option value="1975">1975</option>
  <option value="1974">1974</option><option value="1973">1973</option>
  <option value="1972">1972</option><option value="1971">1971</option>
  <option value="1970">1970</option><option value="1969">1969</option>
  <option value="1968">1968</option><option value="1967">1967</option>
  <option value="1966">1966</option><option value="1965">1965</option>
  <option value="1964">1964</option><option value="1963">1963</option>
  <option value="1962">1962</option><option value="1961">1961</option>
  <option value="1960">1960</option><option value="1959">1959</option>
  <option value="1958">1958</option><option value="1957">1957</option>
  <option value="1956">1956</option><option value="1955">1955</option>
  <option value="1954">1954</option><option value="1953">1953</option>
  <option value="1952">1952</option><option value="1951">1951</option>
  <option value="1950">1950</option><option value="1949">1949</option>
</select>
</div>
<input type="date" style="display: none " id = "dateNaissance" name="dateNaissance" value="2018-10-10"/>
<input type="hidden" id="day-of-birth" name="date_of_birth" value=""/>
<span class="text-danger">
 <label id='dobError'></label>
</span>
</div>

<div class="col-sm-12 pad-t-5">
  <input name="btn" id="btn" type='submit' value='Inscrivez vous' class='btn ex-btn btn-block btn-large'>
</div>
</div>
</form>

<div class="col-sm-12 mrg-top-25">
    vous avez déja un compte ?
  <a href="signin" class="modal-link link-to-login-in-signup" data-modal-href="/login_modal?" data-modal-type="login">
      S'identifier</a>
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
<!--<script type="text/javascript">
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
-->
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
            $('#dateNaissance').val(year + '-' + month + '-' + day);
            return true;
          }
        });

 function ageValidate(){
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
              //$('#dateNaissance').val(year + '-' + (month -1) + '-' + day);
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


         /*$('#email').blur(function(){
          var emailError = '';
          var email = $('#email').val();
            //var email2 = signup_form.email;
            var _token = $('input[name="_token"]').val();
            $.ajax({
             url:"",
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

          });*/

       });
     </script>


