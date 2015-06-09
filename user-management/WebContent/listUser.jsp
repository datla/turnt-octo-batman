<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="https://datatables.net/download/build/nightly/jquery.dataTables.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/k3-custom.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://datatables.net/download/build/nightly/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/js/k3-custom.js"></script>
<meta charset=utf-8 />
<title>DataTables - JS Bin</title>
</head>
<body>
	<div class="container">
		<table id="user_data" class="display">
			<thead>
				<tr>
					<th>User Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>DOB</th>
					<th>Email</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td><c:out value="${user.userid}" /></td>
						<td><c:out value="${user.firstName}" /></td>
						<td><c:out value="${user.lastName}" /></td>
						<td><fmt:formatDate pattern="yyyy-MMM-dd" value="${user.dob}" /></td>
						<td><c:out value="${user.email}" /></td>
						<td><a
							href="UserController?action=edit&userId=<c:out value="${user.userid}"/>">Update</a></td>
						<td><a
							href="UserController?action=delete&userId=<c:out value="${user.userid}"/>">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<p>
		<a href="UserController?action=insert">Add User</a>
	</p>
</body>
</html>