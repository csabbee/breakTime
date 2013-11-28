NAV is cheating
U R : ${pageContext.request.remoteUser}
<h2>logged in user: <%= request.getRemoteUser() %></h2>

<c:url value="/test.jsp" var="testUrl"></c:url>
<br/><a href="${testUrl}">test.jsp</a>
<br/><a href="/test.jsp">test.jsp</a>