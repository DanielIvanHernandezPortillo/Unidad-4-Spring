<!DOCTYPE hyml>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>Address Manager | Home</title>
	<link href="/static/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css" 
	rel="stylesheet" type="text/css"/>
</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Inicio</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
				<li><a href="address">Menu</a></li>
					<li><a href="new-address">New Address</a></li>
					<li><a href="all-addresses">All Addresses</a></li>
					
				</ul>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container">
				<div class="jumbotron text-center" id="homeDiv">
					<h1>Welcome to Address Manager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_ADDRESSES'}">
			<div class="container text-center" id="addressesDiv">
				<h3>My Addresses</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Line 1 number building</th>
								<th>Line 2 number street</th>
								<th>Line 3 area locality</th>
								<th>City</th>
								<th>Zip postcode</th>
								<th>State province country</th>
								<th>Country</th>
								
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="address" items="${addresses}">
								<tr>
									<td>${address.id}</td>
									<td>${address.line1NumberBuilding}</td>
									<td>${address.line2NumberStreet}</td>
									<td>${address.line3AreaLocality}</td>
									<td>${address.city}</td>
									<td>${address.zipPostcode}</td>
									<td>${address.stateProvinceCountry}</td>
									<td>${address.country}</td>
									<td><a href="update-address?id=${address.id}"><span
											class="glyphicon glyphicon-pencil"></span>
									</a></td>
									<td><a href="delete-address?id=${address.id}"> <span
											class="glyphicon glyphicon-trash"></span>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_NEW' || mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Address</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-address">
					<input type="hidden" name="id" value="${address.id}" />
					<div class="form-group">
						<label class="control-label col-sm-3">line 1 number building:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="line1NumberBuilding"
								value="${address.line1NumberBuilding}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">line 2 number street:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="line2NumberStreet"
								value="${address.line2NumberStreet}" />
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="control-label col-sm-3">line 3 area locality:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="line3AreaLocality"
								value="${address.line3AreaLocality}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">City:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="city"
								value="${address.city}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">zip postcode:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="zipPostcode"
								value="${address.zipPostcode}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">state province country:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="stateProvinceCountry"
								value="${address.stateProvinceCountry}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">Country:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="country"
								value="${address.country}" />
						</div>
					</div>
					
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save" />
					</div>

				</form>
			</div>
		</c:when>
	</c:choose>
 
<script type="text/javascript" src="/static/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/jquery-3.1.1.min.js">
</script>
<script type="text/javascript" src="/static/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/bootstrap.min.js">
</script>
</body>
</html>