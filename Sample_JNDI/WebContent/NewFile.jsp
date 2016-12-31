<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String prodToken="missing";
String uatToken="missing";
String devToken="missing";

try{
InitialContext context = new InitialContext();
prodToken = (String) context.lookup("java:/comp/env/Aman_prod");
uatToken = (String) context.lookup("java:/comp/env/Aman_uat");
devToken = (String) context.lookup("java:/comp/env/Aman_dev");


}catch(Exception e){
	prodToken=e.getMessage();
	uatToken=e.getMessage();
	devToken=e.getMessage();
}
%>
</body>
<pre>
Production  :: <%=prodToken%>
UAT         :: <%=uatToken%>
Development :: <%=devToken%>
</pre>
</html>