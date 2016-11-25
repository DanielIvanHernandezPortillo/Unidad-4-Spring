<!DOCTYPE hyml>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>Home</title>
	<link href="/static/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css" 
	rel="stylesheet" type="text/css"/>
</head> 
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="#" class="navbar-brand">Bootsample</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav"> 
					<li><a href="task">Task</a></li>
					<li><a href="team">Team</a></li>
					<li><a href="address">Address</a></li>
					
					
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container">
				<div class="jumbotron text-center" id="homeDiv">
					<h1>Welcome</h1>
				</div>
			</div>
		</c:when>

	</c:choose>
	

<script type="text/javascript" src="/static/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/jquery-3.1.1.min.js">
</script>
<script type="text/javascript" src="/static/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/bootstrap.min.js">
</script>
</body>

</html>