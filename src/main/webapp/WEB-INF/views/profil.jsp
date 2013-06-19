<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<br><br><p>Recherche :</p>
		<table width=50% border=1>
		<tr style="font-weight : bold"><td>Nom</td><td>Prénom</td><td>Sexe</td></tr>
		<c:forEach var="geek" items="${geeks}">
      		<tr>
      		<td>${geek.getNom()}</td>
			<td>${geek.getPrenom()}</td>
			<td>	
			<c:if test="${geek.getSexe() == 'M'}">
					<img src="jquery-ui/img/m.jpg"/>
			</c:if>
			<c:if test="${geek.getSexe() == 'F'}">
					<img src="jquery-ui/img/f.jpg"/>
			</c:if>
			</td>
			</tr>
    	</c:forEach> 
		</table>