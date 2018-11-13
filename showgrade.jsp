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
Double CHI=Double.parseDouble(request.getParameter("CHI"));
Double Eng=Double.parseDouble(request.getParameter("Eng"));
/*
String Name=request.getParameter("Name");
String CHI=request.getParameter("CHI");
String Eng=request.getParameter("Eng");
int sum=Integer.parseInt(CHI)+Integer.parseInt(Eng);
double ave=(Double.parseDouble(CHI)+Double.parseDouble(Eng))/2;
*/
%>

<%!
int sum(double chi,double eng)
{
	if(chi>=0 && chi<=100 && eng>=0 && eng<=100)
	{
		return (int)(chi+eng);
	}
	else
	{
		return 0;
	}
}

double ave(double chi,double eng)
{
	if(chi>=0 && chi<=100 && eng>=0 && eng<=100)
	{
		return (chi+eng)/2;
	}
	else
	{
		return 0;
	}
}
%>



<body>
<form action="" method="get">
<table width="500" border="1" align="center">
  <tr>
    <td colspan="2" align="center">你的成績資料</td>
    </tr>
  <tr>
    <td width="172">名:</td>
    <td width="312"><%=Name %></td>
  </tr>
  <tr>
    <td>國:</td>
    <td><%=CHI %></td>
  </tr>
  <tr>
    <td>英:</td>
    <td><%=Eng %></td>
  </tr>
  <tr>
    <td>總分:</td>
    <td><%
    int o=sum(CHI,Eng);
    
    if(o!=0)
    {
    	out.println(o);
    }
    else
    {
    	out.println("國英需介於0~100");
    }
    %></td>
  </tr>
  <tr>
    <td>平均:</td>
    <td><%=ave(CHI,Eng) %></td>
  </tr>
</table>



</form>
</body>
</html>