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
   <link rel="shortcut icon" href="public/front/images/logos/favicon.ico">
   <title>Property Listing  </title>

   <meta property="og:image" content="">
   <meta name="mobile-web-app-capable" content="yes">
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

  <%@ include file="/WEB-INF/layouts/header.jsp" %>
  <c:if test="${sessionScope.client == null}">
   <c:redirect url="/signin"></c:redirect>
  </c:if>
  <div class="container margin-top40 mb30">
                <form id="lis_pricing" method="post" action="/e-travel/new" class='signup-form login-form' accept-charset='UTF-8'>
                 <div class="col-md-12">
                  <div class="row">
                   <div class="col-md-4">
                    <label class="label-large">Saisir un titre <span style="color: red !important;">*</span></label>
                    <input type="text" name="titre" class="form-control" value="" placeholder="" maxlength="100">
                    <span class="text-danger"></span>
                   </div>
                    <div class="col-md-8">
                     <label class="label-large">Résumé et description <span style="color: red !important;">*</span></label>
                     <textarea class="form-control" name="description" rows="6" placeholder="" maxlength="500" ng-model="summary"></textarea>
                     <span class="text-danger"></span>
                    </div>
                  </div>
                  <div class="row">
                   <div class="col-md-6">
                    <label class="label-large">Ville de Depart :</label>
                    <select id="villeDepart" name="villeDepart" class="form-control">
                     <option value="-1">Selectionner une ville</option>
                     <c:forEach items="${requestScope.villes}" var="ville">
                       <option value="<c:out value="${ville.id_ville}"/>"> <c:out value="${ville.nom}"/></option>
                     </c:forEach>
                    </select>
                    <span class="text-danger"></span>
                   </div>
                   <div class="col-md-6">
                    <label class="label-large">Ville d'arrivé :</label>
                    <select id="villeArrivee" name="villeArrivee" class="form-control">
                    <option value="-1">Selectionner une ville</option>
                     <c:forEach items="${requestScope.villes}" var="ville">
                      <option value="<c:out value="${ville.id_ville}"/>"> <c:out value="${ville.nom}"/></option>
                     </c:forEach>
                   </select>
                    <span class="text-danger"></span>
                   </div>
                  </div>
                 </div>
                 <div class="col-md-9">
                  <div class="panel panel-default">
                   <div class="panel-body">
                    <div class="row">
                     <div class="col-md-6">
                      <label>Uploader une fiche :</label>
                      <input class="field" id="fiche" name="photos[]" type="file" multiple="">
                     </div>
                    </div>
                   </div>
                  </div>

                  <!---------------->
                  <!----------------->

                  <div class="row">
                   <div class="col-md-8">
                    <label for="listing_prix_native" class="label-large">Prix par personne <span style="color: red !important;">*</span></label>
                    <div class="input-addon">
                     <span class="input-prefix pay-currency">DH</span>
                     <input type="text" data-suggested="" id="prix" value="" name="prix" class="money-input">
                    </div>
                    <span class="text-danger"></span>
                   </div>
                  </div>

                  <div class="row">
                   <div class="col-md-6">
                    <label class="label-large">Date de Depart :</label>
                    <input type="datetime-local" id="dateDepart" name="dateDepart" class="form-control" />
                    <span class="text-danger"></span>
                   </div>
                   <div class="col-md-6">
                    <label class="label-large">date d'arrivé :</label>
                    <input type="datetime-local" id="dateArrivee" name="dateArrivee" class="form-control" />
                    <span class="text-danger"></span>
                   </div>
                  </div>
                 </div>

                  <div class="row">
                   <div class="col-md-12">
                     <input type="button" class="btn btn-warning" value="Ajouter un escale" id="addEscale">
                    </label>
                   </div>
                  </div>
<script type="text/javascript">
 $('#addEscale').on('click',function (){
  $('.escales').append("<div class=\"row escale\" id=\"escale\">" + $('.escale').first().html() + "</div>");
 });
</script>
                 <div class="escales">
                  <div class="row escale" id="escale">
                   <div class="col-md-2 form-group">
                    <label class="label-large">Nom de l'escale :</label>
                    <input type="text" name="nom" id="nom" class="form-control">
                   </div>
                   <div class="col-md-2 form-group">
                    <label class="label-large">Ville de l'escale :</label>
                    <select id="villeEscale" name="villeEscale" class="form-control">
                     <option value="-1">Selectionner une ville</option>
                     <c:forEach items="${requestScope.villes}" var="ville">
                      <option value="<c:out value="${ville.id_ville}"/>"> <c:out value="${ville.nom}"/></option>
                     </c:forEach>
                    </select>
                   </div>
                   <div class="col-md-3 form-group">
                    <label class="label-large">Date d'entrée :</label>
                    <input type="datetime-local" name="dateEntree" id="dateEntree" class="form-control">
                   </div>
                   <div class="col-md-3 form-group">
                    <label class="label-large">Date de sortie :</label>
                    <input type="datetime-local" name="dateSortie" id="dateSortie" class="form-control">
                   </div>
                  </div>
                 </div>
                 <div class="row">
                   <div id="additional-guests" class="display-off">
                    <div class="col-md-12">
                     <div class="col-md-4 l-pad-none">
                      <div class="input-addon">
                       <span class="input-prefix pay-currency">$</span>
                       <input type="text" data-extras="true" value="0" id="prix-extra_person" name="guest_fee" class="money-input" data-saving="additional-saving">
                      </div>
                     </div>
                     <div class="col-md-4 txt-right">
                      <label class="label-large">Pour chaque invité après</label>
                     </div>
                     <div class="col-md-4">
                      <select id="prix-select-guests_included" name="guest_after" data-saving="additional-saving" class="form-control">
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
                       <option value="16" >16+</option>
                      </select>
                     </div>
                    </div>
                   </div>
                  <div class="row mrg-top-25">
                   <div class="col-md-10"></div>
                   <div class="col-md-2 text-right">
                    <button type="submit" class="btn btn-large btn-primary next-section-button">
                     Enregistrer
                    </button>
                   </div>
                  </div>
                 </div>
                </form>
                 </div>
  <%@ include file="/WEB-INF/layouts/footer.jsp" %>

  <script type="text/javascript">
                var APP_URL = "";
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
                $(document).on('change', '.pricing_checkbox', function(){
                 if(this.checked){
                  var name = $(this).attr('data-rel');
                  $('#'+name).show();
                 }else{
                  var name = $(this).attr('data-rel');
                  $('#'+name).hide();
                  $('#prix-'+name).val(0);
                 }
                });
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
      </html>

      <script type="text/javascript">
       $(document).ready(function () {

        $('#lis_pricing').validate({
         rules: {
          prix: {
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


