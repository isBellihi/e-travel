<%--
  Created by IntelliJ IDEA.
  User: Win5
  Date: 13/12/2018
  Time: 09:28
  To change this template use File | Settings | File Templates.
  --%>
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <html>
  <head>
   <title>Create New Excurssion</title>
   <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
   <script type="text/javascript" src="/js/jquery.min.js"></script>
   <script type="text/javascript" src="/js/bootstrap.min.js"></script>

  </head>
  <body>
   <div class="container" style="margin-top: 100px">
    <div class="row">
     <div class="col-md-8 col-md-offset-2">
      <div class="panel panel-success">
       <div class="panel-heading"><h4>Nouvelle Annonce</h4></div>
       <div class="well panel-body" >
        <form class=" form-horizontal" enctype="multipart/form-data" role="form" method="POST" action="" style="margin-right:80px ">

         <div class="form-group">
          <label for="titre" class="col-md-4 control-label">Titre</label>

          <div class="col-md-6">
           <input placeholder="titre de l'annonce" id="titre" type="text" class="form-control" name="titre" value="{{ old('titre') }}" required autofocus>
          </div>
         </div>
         <div class="form-group">
          <label for="categorie_id" class="col-md-4 control-label">Categorie</label>

          <div class="col-md-6">
           <select id="categorie_id" name="categorie_id" class="form-control" required>
            <option value="">Selectionner la categorie</option>
            <option value=""></option>
           </select>
          </div>
         </div>
         <!------------------------------------REGION ET VILLE---------------------------------------- -->
         <div class="form-group">
          <label for="region_id" class="col-md-4 control-label">Region</label>

          <div class="col-md-6">
           <select id="region_id" name="region_id" class="form-control" onchange="populate(this.id,'ville_id')" value="{{ old('old') }}" required>
            <option value="">Selectionner une region</option>
            <option value="{{$region->id}}"></option>
           </select>
          </div>
         </div>
         <div class="form-group" >
          <label for="ville_id" class="col-md-4 control-label" >Ville</label>

          <div class="col-md-6">
           <select id="ville_id" name="ville_id" class="form-control" value="{{ old('old') }}">

           </select>

          </div>
         </div>
         <div class="form-group">
          <label for="capacite" class="col-md-4 control-label" >Capacite d'accueil</label>

          <div class="col-md-6">
           <input  id="capacite" type="number" min="0" class="form-control" name="capacite" value="" required autofocus placeholder="nombre de personnes">

          </div>
         </div>
        </div>

        <!------------------------------------Les Checkbox---------------------------------------- -->
        <div class="form-group">
         <label for="ishand" class="col-md-4 control-label">Pour familles/enfants</label>

         <div class="col-md-6" class="form-control">
          <label class="radio-inline"><input type="radio" name="ishand" value="1" required value="">oui</label>
          <label class="radio-inline"><input type="radio" name="ishand" value="0">non</label>
         </div>
        </div>

        <div class="form-group">
         <label for="prix" class="col-md-4 control-label">Prix</label>

         <div class="col-md-6">
          <input id="prix"  type="text" class="form-control" name="prix" value="" required autofocus placeholder="**MAD**">
         </div>
        </div>
        <div class="form-group">
         <label for="description" class="col-md-4 control-label">Description</label>

         <div class="col-md-6">
          <textarea id="description" class="form-control" name="description" rows="8" cols="10"  required placeholder="description et reglement intérieur"></textarea>

         </div>
        </div>

        <div class="form-group">
         <label for="" class="col-md-4 control-label">Images</label>

         <div class="col-md-6">
          <input type="file" name="img1" value="" required>
          <input type="file" name="img2" value="">
          <input type="file" name="img3" value="">
          <input type="file" name="img4" value="">
          <input type="file" name="img5" value="">
          <input type="file" name="img6" value="">
         </div>
        </div>

        <center>
         <div class="form-group">
          <div class="col-md-6 col-md-offset-4">
           <button type="submit" class="btn btn-primary "  >
            Enregistrer
           </button></form>

           <a href="" class="btn btn-primary">Annuler</a>
          </div></div>
         </center>

        </div>
       </div>
      </div>
     </div>
    </div>
   </body>
   </html>
