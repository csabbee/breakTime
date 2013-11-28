<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<ul>
	<c:forEach begin="2" end="10" step="2" var="number" varStatus="index">
		<li>count=${index.count} index=${index.index} number=${number}</li>
	</c:forEach>
	
	<c:forEach items="${breakTimes}" var="number" varStatus="index">
		<li>${index.count}.: ${number}</li>
	</c:forEach>
</ul>
<h2>version 0</h2>
<hr/>
<%=request.getParameter("param") %>
<h2>version 1</h2>
<hr/>
${param.param}
<h2>version 2</h2>
<hr/>
<c:out value="${param.param}"></c:out>


