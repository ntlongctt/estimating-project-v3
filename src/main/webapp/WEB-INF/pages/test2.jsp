<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1> Day la trang test2</h1>

<c:forEach var="user" items="${listUser }">
	${user.hoTen}
	<br>
</c:forEach>

<br>
Username: ${username1}
<br>
Password: ${password1}