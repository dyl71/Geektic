<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>

<head>

	<title>Geektic</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">  

	<!-- Jquery UI -->
	<link rel="stylesheet" href="jquery-ui/development-bundle/themes/base/jquery.ui.all.css">
	<script src="jquery-ui/development-bundle/jquery-1.9.1.js"></script>
	<script src="jquery-ui/development-bundle/ui/jquery.ui.core.js"></script>
	<script src="jquery-ui/development-bundle/ui/jquery.ui.widget.js"></script>
	<script src="jquery-ui/development-bundle/ui/jquery.ui.tabs.js"></script>
	<script src="jquery-ui/development-bundle/ui/jquery.ui.button.js"></script>
	<link rel="stylesheet" href="jquery-ui/development-bundle/demos/demos.css">
	<script>
	$(function() {
		$( "#tabs" ).tabs();
	});
	</script>
	
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

</head>

<body>

	<img src="jquery-ui/img/geektic.jpg"/> <img src="jquery-ui/img/ghost.jpg"/>
	<hr>
	<p>Bienvenue sur Geektic le site de rencontre entre Geek !</p>
<div id="tabs">
	<ul>
		<li><a href="#tabs-1">Présentation</a></li>
		<li><a href="#tabs-2">Geeks</a></li>
		<li><a href="#tabs-3">Inscription</a></li>
	</ul>
	
	<div id="tabs-1">
		 <jsp:include page="presentation.jsp" />
	</div>
	
	<div id="tabs-2">
		<jsp:include page="profil.jsp" />
	</div>
	
	<div id="tabs-3">
		<jsp:include page="inscription.jsp" />
	</div>
</div>


<marquee id="marquee3" direction="right"><img src="jquery-ui/img/smallghost.jpg"/><img src="jquery-ui/img/smallghostF.jpg"/><img src="jquery-ui/img/smallpacman.jpg"/></marquee>
</body>

</html>