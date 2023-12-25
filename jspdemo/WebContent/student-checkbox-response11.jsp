<html>
<head>
<title>Student Confirmation Title</title>
</head>
<body>
The student is confirmed: ${param.firstName} ${param.lastName}
<br><br>
Registered Student is: <%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %>
<!-- display list of "favouriteLanguage"  -->
<br>
<br>
Favourite Programming Languages: <br>

<ul>
<%
String[] langs = request.getParameterValues("favouriteLanguage");
if(langs!=null){
	for(String lang : langs){
		out.println("<li>" + lang+ "</li>");
	}
}
%>
</ul>
</body>
</html>