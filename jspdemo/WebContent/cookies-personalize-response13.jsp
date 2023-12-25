<%@ page import="java.net.URLEncoder"%>
<html>
<head>
<title>Confirmation</title>
</head>
<%
//read form data
String favLang = request.getParameter("favouriteLanguage");

//create the cookie
favLang = URLEncoder.encode(favLang, "UTF-8");
Cookie theCookie = new Cookie("myApp.favouriteLanguage", favLang);

//set the life span as total number of seconds
theCookie.setMaxAge(365 * 24 * 60 * 60);

//send cookie to browser
response.addCookie(theCookie);
%>

<body>
	Thanks! we set your favourite language to: ${param.favouriteLanguage}
	<br>
	<br>

	<a href="cookie-homepage13.jsp">Return to homepage</a>
</body>
</html>