<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.TreeSet"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%!private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm"); 

long getMinutes() throws Exception{
	Date coffeeDate = sdf.parse("2013-11-27 10:45");
	Date now = new Date();
	long minutes = (coffeeDate.getTime() - now.getTime()) / 60000;
	return minutes;
}
%>
<%
TreeSet<String> breakTimes = (TreeSet<String>) application.getAttribute("breakTimes");
%>

  <h1>Coffee Break</h1>
  <jsp:useBean id="now" class="java.util.Date"/>
<!-- asdasdasd -->
<%-- asdasdasdasdqqwqcqe --%>
  minutes left 'till coffee break :<%= getMinutes()%>
  <hr/>
  defined breaks: <%= application.getAttribute("breakTimes") %>
  <ul>
  <%for(String next : breakTimes){%>
    <li><%=next %></li>
  <%} %>  
  </ul>