<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.io.File" %>  
<%@ page import="java.util.*" %>
<%@ page import="com.extraction.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Word Cloud</title>
<link rel="stylesheet" href="mm_entertainment.css" type="text/css" />
</head>
<body bgcolor="#14285f">
<br>
<a href="index.jsp">HOME</a>&nbsp; &nbsp;<a href="analysis.jsp">back</a><br />
<br>
<%

String cluster = request.getParameter("selectcluster");
//System.out.println("1."+cluster);

MainFile mfObj = new MainFile();
mfObj.drawWordCloud(cluster);


File f=new File("");
String name=f.getAbsolutePath()+ "\\wordcloud_" + cluster+".png";
//System.out.println(name);
out.println("<h1>" + "WORD CLOUD FOR THE CLUSTER:</h1>");
out.print("<center><img src='"+name+"' alt='bar chart'  width='800' height='600' border='0' /></center>");
%>

</body>
</html>