<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<% 
String Name=request.getParameter("Name");
String TEL=request.getParameter("TEL");
String Add=request.getParameter("Add");
String Text=request.getParameter("Text");
%>
<body>
<table width="500" border="1" align="center">
  <tr>
    <td colspan="2" align="center"> �A����Ƭ�</td>
  </tr>
  <tr>
    <td width="95">�m�W</td>
    <td width="389"><%=Name%></td>
  </tr>
  <tr>
    <td>�q��</td>
    <td><%=TEL%></td>
  </tr>
  <tr>
    <td>�a�}</td>
    <td><%=Add%></td>
  </tr>
  <tr>
    <td>�Ƶ�</td>
    <td><%=Text%></td>
  </tr>
</table>


</body>
</html>