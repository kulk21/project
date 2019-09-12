<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/style.css">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.validate.min.js"></script>

<title>Create New User</title>
</head>
<body>
	<jsp:directive.include file="header.jsp" />
	<div align="center">
		<h1 class="pageheading">
			<c:if test="${user != null }">
			Edit User
		</c:if>

			<c:if test="${user == null }">
		Create New User
		</c:if>
		</h1>
	</div>

	<div align="center">

		<c:if test="${user != null }">
			<form action="update_user" method="post" id="userForm">
				<input type="hidden" name="userId" value="${user.userId}">
		</c:if>

		<c:if test="${user == null }">
			<form action="create_user" method="post" id="userForm">
		</c:if>

		<table class="form">

			<tr>
				<td align="right">Email:</td>
				<td align="left"><input type="text" name="email" id="email"
					size="20" value="${user.email}"></td>
			</tr>
			<tr>
				<td align="right">Full Name:</td>
				<td align="left"><input type="text" name="fullname"
					id="fullname" size="20" value="${user.fullName}"></td>
			</tr>
			<tr>
				<td align="right">Password:</td>
				<td align="left"><input type="password" name="password"
					id="password" size="20" value="${user.password}"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">Save</button>
					<button id="butonCancel">Cancel</button>
				</td>
			</tr>
		</table>
		</form>
	</div>

	<jsp:directive.include file="footer.jsp" />

</body>
<script type="text/javascript">

	$(document).ready(function() {
		$("#userForm").validate({
			rules: {
				email: {
					required: true,
					email: true
				},
				fullname: "required",
				password: "required",
			},
			messages: {
				email:{
					required : "Email is required!",
					email: "Please enter valid email"
				},
				fullname: "Full Name is required!",
				password: "Password is required!",
				
			}
		});	
		
		$("#butonCancel").click(function() {
			history.go(-1);
		})
		
	});
</script>


</html>