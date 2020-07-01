<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<link href="/css/bootstrap-datepicker.css" rel="stylesheet" />
<script src="/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="/js/bootstrap-datepicker.js" type="text/javascript"></script>

     
</head>
<body>
<div class="container">
<h3 class="text-center">Form Convention</h3>

 <form:form method="post" action="editConvention" modelAttribute="conventionEdit">
    <form:hidden path="id"/>
  <div class="form-group">
   <label for="type">Type</label>
   <form:select path="type" cssClass="form-control">
   <form:option value="NONE"> --SELECT--</form:option>
   <form:option value="universitaire">universitaire</form:option>
   <form:option value="industrielle nationale">industrielle nationale</form:option>
   <form:option value="industrielle internationale">industrielle internationale</form:option>
   </form:select>
 </div>
 <div class="form-group">
  <label for="objet">objet</label>
  <form:input path="objet" cssClass="form-control" />
  </div>
  <div class="form-group" >
 <label for="editiondate">date Edition</label>
  <form:input path="editiondate" cssClass="form-control datepicker"  />
  </div>
  <div class="form-group">
  <label for="participant1">participant 1</label>
  <form:input path="participant1" cssClass="form-control" />
  </div>
  <div class="form-group">
  <label for="signdate1">sign date 1</label>
  <form:input path="signdate1" cssClass="form-control datepicker" />
  </div>
  <div class="form-group">
  <label for="participant2">participant 2</label>
  <form:input path="participant2" cssClass="form-control" />
  </div>
  <div class="form-group">
  <label for="signdate2">sign date 2</label>
  <form:input path="signdate2" cssClass="form-control datepicker" />
  </div>
  <div class="form-group">
  <label for="participant3">participant 3</label>
  <form:input path="participant3" cssClass="form-control" />
  </div>
  <div class="form-group">
  <label for="signdate3">sign date 3</label>
  <form:input path="signdate3" cssClass="form-control datepicker" />
  </div>
  <div class="form-group">
  <label for="participant4">participant 4</label>
  <form:input path="participant4" cssClass="form-control" />
  </div>
  <div class="form-group">
  <label for="signdate4">sign date 4</label>
  <form:input path="signdate4" cssClass="form-control datepicker" />
  </div>
  <div class="form-group">
  <label for="entreedate">entree date </label>
  <form:input path="entreedate" cssClass="form-control datepicker" />
  </div>
  <div class="form-group">
  <label for="expireedate">expiree date</label>
  <form:input path="expireedate" cssClass="form-control datepicker"/>
 </div>
  
 <div class="form-group">
  <input type="submit" value=Submit class="btn btn-primary" />
  </div>
 
 </form:form>
 </div>
 <script type="text/javascript">
	 $('.datepicker').datepicker({
    	 weekStart:1,
    	 color: 'red'
	 });
	</script>
</body>

</html>