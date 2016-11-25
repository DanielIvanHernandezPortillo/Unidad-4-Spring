<!DOCTYPE hyml>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>Team Manager | Home</title>
	<link href="/static/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css" 
	rel="stylesheet" type="text/css"/>
</head>  
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Inicio</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
				<li><a href="team">Menu</a></li>
					<li><a href="new-team">New Team</a></li>
					<li><a href="all-teams">All Teams</a></li>
					
				</ul>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container">
				<div class="jumbotron text-center" id="homeDiv">
					<h1>Welcome to Team Manager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_TEAMS'}">
			<div class="container text-center" id="teamsDiv">
				<h3>My Teams</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Liga</th>
								<th>Date created</th>
								<th>Existence</th>
								<th>Gol</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="team" items="${teams}">
								<tr>
									<td>${team.id}</td>
									<td>${team.name}</td>
									<td>${team.liga}</td>
									<td><fmt:formatDate pattern="dd-MM-yyyy"
											value="${team.dateCreated}" /></td>
									<td>${team.existence==true?"YES":"NO"}</td>
									<td>${team.gol}</td>
									<td><a href="update-team?id=${team.id}"><span
											class="glyphicon glyphicon-pencil"></span>
									</a></td>
									<td><a href="delete-team?id=${team.id}"> <span
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
				<h3>Manage Team</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-team">
					<input type="hidden" name="id" value="${team.id}" />
					<div class="form-group">
						<label class="control-label col-sm-3">Name:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="name"
								value="${team.name}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">Liga:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="liga"
								value="${team.liga}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3">Existence:</label>
						<div class="col-sm-7">
							<input type="radio" class="col-sm-1" name="existence"
								value="true" />
								<div class="col-sm-2">YES</div>
							<input type="radio" class="col-sm-1" name="existence"
								value="false" checked="checked"/>
								<div class="col-sm-2">NO</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">Gol:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="gol"
								value="${team.gol}" />
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