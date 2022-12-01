<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<h1 class="container text-center mt-3">This is add product form</h1>
	<form action="handle-product" method="post">
		<div class="col-md-6 offset-md-3">
			<div class="mb-3 ">
				<label for="name" class="form-label">name</label> <input type="text"
					name="name" class="form-control" id="name" aria-describedby="name">
			</div>
			<div class="mb-3">
				<label for="description" class="form-label">Description</label>
				<textarea class="form-control" name="description" id="description" rows="4"
					placeholder="description"></textarea>
			</div>
			<div class="mb-3">
				<label for="price" class="form-label">price</label> <input
					type="text" name="price" class="form-control" id="price"
					aria-describedby="price" placeholder="Price">
			</div>
			<div class="container text-center">
				<a href="${pageContext.request.contextPath}/"
					class="btn btn-outline-danger">Back</a>
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
	</form>

</body>
</html>