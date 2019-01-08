<%--
  Created by IntelliJ IDEA.
  User: Win5
  Date: 07/01/2019
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
 <title>Title</title>
</head>
<body>
<%@include file="/WEB-INF/layouts/header.jsp"%>
<div class="container margin-top30 mb30">
 <div class="error_width">
  <div class="col-md-7 col-sm-7 col-xs-12">
   <div class="error_word">Oops!</div>
   <div class="clearfix"></div>
   <div class="error_small_word">Aucune page corresponde<br> à la page que vous avez demandez.</div>
  </div>
  <div class="col-md-5 col-sm-5 col-xs-12">
   <div class="img_cen_ter"><img src="/e-travel/public/front/images/errors/404.jpg" class="img-responsive"></div>
  </div>
 </div>
</div>
<%@include file="/WEB-INF/layouts/footer.jsp"%>
</body>
</html>
