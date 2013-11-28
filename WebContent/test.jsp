<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul>
	<c:forEach begin="2" end="10" step="2" var="number" varStatus="index">
		<li>count=${index.count} index=${index.index} number=${number}</li>
	</c:forEach>
	
	<c:forEach items="${breakTimes}" var="number" varStatus="index">
		<li>${index.count}.: ${number}</li>
	</c:forEach>
</ul>
<c:url value="secret/topsecret.jsp" var="secretUrl"></c:url>
<a href="${secretUrl}">secret</a>

