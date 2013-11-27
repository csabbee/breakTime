<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<h2>Logged in users</h2>
<%
List<String> users = (List<String>)application.getAttribute("userList");
%>
<ul>
<%for(String user : users){%>
  <li><%=user %></li>
<%} %>  
</ul>