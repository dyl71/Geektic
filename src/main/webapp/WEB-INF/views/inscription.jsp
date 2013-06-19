<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<br><br><p>Si vous souhaitez vous inscrire remplissez le formulaire ci-dessous : </p>
		<form:form method="POST" action="/" commandName="geek">
			Nom : <form:input path="nom" /><br>
			Prénom : <form:input path="prenom" /><br>
			Sexe : 
			<form:radiobutton path="sexe" value="M"/>Masculin
			<form:radiobutton path="sexe" value="F"/>Féminin
			<br>
			Email : <form:input path="email" /><br>
			
			<br><form:input path="" type="submit" name="btninscription" value="S'inscrire" class="ui-state-default ui-corner-all" />
		</form:form>