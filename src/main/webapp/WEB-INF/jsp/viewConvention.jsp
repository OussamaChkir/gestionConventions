<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Convention</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<style type="text/css">
.button1{
border-radius: 12px;
}

</style>
</head>
<body>
<div class="container"><a href="/auth" class="btn btn-dark button1">Déconnexion</a></div>
<br>
<div class="container">
<h2 class="text-center">Convention Id ${Convention.id} </h2>
<h5><b>Type:</b> ${Convention.type}</h5><br>
<h5><b>Objet :</b> ${Convention.objet}</h5><br>
<h5><b>Date edition :</b> ${Convention.editiondate}</h5><br>
<h5><b>Participant1 :</b> ${Convention.participant1} &nbsp;&nbsp;    <b>Date Signature 1 :</b> ${Convention.signdate1}</h5><br>
<h5><b>Participant2 :</b> ${Convention.participant2} &nbsp;&nbsp;    <b>Date Signature 2 :</b> ${Convention.signdate2}</h5><br>
<h5><b>Participant3 :</b> ${Convention.participant3} &nbsp;&nbsp;    <b>Date Signature 3 :</b> ${Convention.signdate3}</h5><br>
<h5><b>Participant4 :</b> ${Convention.participant4} &nbsp;&nbsp;   <b>Date Signature 4 :</b> ${Convention.signdate4}</h5><br>
<h5><b>Date Entrée :</b> ${Convention.entreedate}</h5><br>
<h5><b>Date Expirée :</b> ${Convention.expireedate}</h5><br>


<br><br>
<a href="/Conventions/list" class="btn btn-primary">Retour</a>
</div>


</body>







</html>