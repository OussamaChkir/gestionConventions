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
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

      <!-- Javascript -->
      <script>
         $(function() {
            $( ".datepicker-1" ).datepicker();
         });
      </script>
</head>
<body>
<div class="container">
    <h2 class="text-center">List Convention </h2>
    <form action="search" method="get">
    <center><label for="type">Type</label>
    <select name="type" id="type">
    <option value="" selected disabled hidden>Choose type here</option>
    <option value="universitaire">universitaire</option>
    <option value="industrielle nationale">industrielle nationale</option>
    <option value="industrielle internationale">industrielle internationale</option>
    </select>
    <label for="objet">objet</label><input name="objet" id="objet">
    <label for="editiondate">Date Edition</label><input name="editiondate" id="editiondate" class="datepicker-1"><br>
    <label for="entreedate">Date Entrée</label><input name="entreedate" id="entreedate" class="datepicker-1">
    <label for="expireedate">Date Expirée</label><input name="expireedate" id="expireedate" class="datepicker-1">
    <input type="submit" value="Search" class="btn btn-info"></center>
    </form>
    <table class="table">
     <thead class="thead-dark">
			<tr>
				<th scope="col">Type</th>
				<th scope="col">Objet</th>
				<th scope="col">Date edition</th>
				<th scope="col">Date entree en vigueur</th>
				<th scope="col">Date expiration</th>
				<th scope="col">Action</th>
			</tr>
			</thead>
			<tbody>
			<!-- loop over and print our customers -->
				<c:forEach var="tempConvention" items="${Conventions}">
				<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/Conventions/updateForm">
								<c:param name="conventionId" value="${tempConvention.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/Conventions/delete">
								<c:param name="conventionId" value="${tempConvention.id}" />
							</c:url>
							<!-- construct an "view" link with customer id -->
							<c:url var="viewLink" value="/Conventions/view">
								<c:param name="conventionId" value="${tempConvention.id}" />
							</c:url>
    		<tr>
				<td> ${tempConvention.type} </td>
				<td> ${tempConvention.objet} </td>
				<td> ${tempConvention.editiondate} </td>
				<td> ${tempConvention.entreedate} </td>
				<td> ${tempConvention.expireedate} </td>
				<td>
					<!-- display the update link --> <a href="${updateLink}" class="btn btn-primary">Update</a>
					<a href="${deleteLink}"
					onclick="if (!(confirm('Are you sure you want to delete this Convention?'))) return false" class="btn btn-danger">Delete</a>
					<a href="${viewLink}" class="btn btn-warning">view</a>
				</td>
			</tr>
				
				</c:forEach>
				</tbody>
    </table>
    <a href="/Conventions/addConvention" class="btn btn-success">add Convention</a>
   </div>
</body>
</html>