<%@ page import="java.net.URLDecoder"%>
<html>
<body>
	<h3>Training Portal</h3>
	<!-- read the favourite programming language cookie -->
	<%
	//the default....if there are no cookies
	String favLang = "Java";

	//get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();
	if (theCookies != null) {
		for (Cookie tempCookie : theCookies) {
			if (tempCookie.getName().equals("myApp.favouriteLanguage")) {
		favLang = tempCookie.getValue();
		favLang = URLDecoder.decode(favLang, "UTF-8");
		break;
			}
		}
	}
	%>

	<!-- now show a personalized page use the "favLang" variable -->
	<!-- show new books for this lang -->

	<h4>
		New books for
		<%=favLang%></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h4>
		Latest News reports for
		<%=favLang%></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h4>
		Hot Jobs for
		<%=favLang%></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<hr>
	<a href="cookies-personalize-form13.html">Personalize this page</a>
</body>
</html>