<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expression Language Demo</title>
</head>
<body>

		<div align = "center">
        <p> Sample to access username parameter :: ${param["username"]}</p>
    </div>
    <div align = "center">
         <p>Access header information - User Agent :: ${header["user-agent"]}</p>
    </div>
    
    <div align = "center">
         <p>Expression value of 1+2 :: ${1+2}</p>
    </div>
    <div align = "center">
         <p>Expression value of 2*2 :: ${2*2}</p>
    </div>    
</body>
</html>