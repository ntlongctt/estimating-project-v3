<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Day la test</h1>
${value}
${name}
<br>
<c:forEach var="name" items="${listName }">
	${name}
	<br>
</c:forEach>

<form action="test2.html" method="post">
	
	<input type="text" name="username" value="">
	<input type="text" name="password" value="">

	<input type="submit" value="Go to test2"> 
</form>

<br>
<form action="test3.html" method="get">
	
	<input type="text" name="username1" value="">
	<input type="text" name="password1" value="">

	<input type="submit" value="Go to test3"> 
</form>