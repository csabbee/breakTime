<%@page import="java.util.Set"%>
<%@page import="java.util.TreeSet"%>
<jsp:useBean id="breakTimes" class="java.util.TreeSet" scope="application"/>

<%
if("post".equalsIgnoreCase(request.getMethod())){
    String newBreak = request.getParameter("break");
    breakTimes.add(newBreak);
}
%>
<h2>List of breaks</h2>
<table class="table table-striped">
	<thead>
		<tr>
			<th>Break Time</th>
			<th>Action</th>
		</tr>
	</thead>
	<c:forEach items="${breakTimes}" var="next">
	<tr>
		<td>${next}</td>
		<c:url value="delete" var="deleteUrl">
		    <c:param name="break" value="${next}"></c:param>
		</c:url>
		<td><a class="btn btn-small" href='${deleteUrl}'><i class="icon-trash"></i></a></td>
	</tr>
	</c:forEach>
</table>

<h2>Add new break time</h2>
<form action="breaktime.jsp" method="post">
	<input class="input-large" type="text" name="break">
	<button type="submit" class="btn">add</button>
</form>