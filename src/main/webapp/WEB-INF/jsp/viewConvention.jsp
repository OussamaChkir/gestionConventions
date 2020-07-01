<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List Convention</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
<h2 class="text-center">Convention Id ${Convention.id} </h2>
<h5><b>type:</b> ${Convention.type}</h5><br>
<h5><b>object :</b> ${Convention.objet}</h5><br>
<h5><b>editiondate :</b> ${Convention.editiondate}</h5><br>
<h5><b>participant1 :</b> ${Convention.participant1}     <b>signdate1 :</b> ${Convention.signdate1}</h5><br>
<h5><b>participant2 :</b> ${Convention.participant2}     <b>signdate2 :</b> ${Convention.signdate2}</h5><br>
<h5><b>participant3 :</b> ${Convention.participant3}     <b>signdate3 :</b> ${Convention.signdate3}</h5><br>
<h5><b>participant4 :</b> ${Convention.participant4}     <b>signdate4 :</b> ${Convention.signdate4}</h5><br>
<h5><b>signdate4 :</b> ${Convention.entreedate}</h5><br>
<h5><b>signdate4 :</b> ${Convention.expireedate}</h5><br>



</div>
</body>







</html>