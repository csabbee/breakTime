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
	<%for(Object next : breakTimes){%>
	<tr>
		<td><%=next %></td>
		<td><a class="btn btn-small" href='delete?break=<%= next %>'><i class="icon-trash"></i></a></td>
	</tr>
	<%} %>
</table>

<h2>Add new break time</h2>
<form action="breaktime.jsp" method="post">
	<input type="text" name="break"> <input type="submit" value="add">
</form>