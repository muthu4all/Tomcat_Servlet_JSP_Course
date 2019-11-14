<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Setting the coupon code in session</title>
</head>
<body>
	<%
	String coupon_code=request.getParameter("couponcode");
	session.setAttribute("sess_coupon_code",coupon_code);
	out.println("Coupon code <b>"+ session.getAttribute("sess_coupon_code") + "</b> is set with session attribute <b>sess_coupon_code</b>");
	 %>

<br>
	<a href="session_check_coupon.jsp">Check coupon code set in session </a>
	<br>
	<a href="session_input_coupon.jsp">Add new coupon code </a>
	<br>

</body>
</html>