<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.*,com.luv2code.jsp.tagdemo.Student"%>

<%
//just create some sample data...normally provided by MVC
List<Student> data = new ArrayList<>();
data.add(new Student("Bhumika", "Saini", false));
data.add(new Student("Shivani", "Singla", false));
data.add(new Student("Garima", "Issar", true));
pageContext.setAttribute("myStudents", data);
%>

<html>
<body>
	<c:forEach var="tempStudent" items="${myStudents}">
${tempStudent.firstName} ${tempStudent.lastName}, ${tempStudent.goldCustomer}<br />
	</c:forEach>

	<h3>Using HTML Tables</h3>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold Customer</th>
		</tr>
		<c:forEach var="tempStudent" items="${myStudents}">
			<tr>
				<td>${tempStudent.firstName}</td>
				<td>${tempStudent.lastName}</td>
				<td>
				<c:choose>
					<c:when test="${tempStudent.goldCustomer}">
				          Special Discount
				    </c:when>
					<c:otherwise>
				            -
				    </c:otherwise>
				</c:choose>
				</td>
				<br />
			</tr>
		</c:forEach>
	</table>

</body>
</html>