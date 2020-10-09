<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document Upload</title>
</head>
<body>
	<form action="upload" method="post" enctype="multipart/form-data">
		<pre>
Id: <input type="text" name="id" />
Document: <input type="file" name="document" />
<input type="submit" name="submit" value="Upload" />
</pre>
</form>
<table>
<tr>
<th>id</th>
<th>name</th>
<th>link</th>
</tr>

<c:forEach items="${documents}" var="document">
<tr>
<td>${document.id}</td>
<td>${document.name}</td>
<td><a href="download?id=${document.id}">Download</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>