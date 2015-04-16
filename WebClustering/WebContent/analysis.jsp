<%@page import="com.extraction.MainFile"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.io.File" %>  
<%@ page import="java.util.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload</title>
<link rel="stylesheet" href="mm_entertainment.css" type="text/css" />
</head>
<body bgcolor="#14285f">
    
    
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="02021e">
    <td width="400" colspan="2" rowspan="2" nowrap="nowrap"><img src="mm_entertainment_image.jpg" alt="Header image" width="400" height="140" border="0" /></td>
    <td width="360" height="58" nowrap="nowrap" id="logo" valign="bottom">Document Clustering </td>
    <td width="100%">&nbsp;</td>
  </tr>
  <tr bgcolor="02021E">
    <td height="57" nowrap="nowrap" id="tagline" valign="top">Unsupervised Learning </td>
	<td width="100%">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#cc3300"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
  </tr>

   <tr>
    <td colspan="4"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
  </tr>

   <tr>
    <td colspan="4" bgcolor="#cc3300"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>
   <tr>
    <td colspan="5" id="dateformat">&nbsp;<br />
	&nbsp; &nbsp; <a href="index.jsp">home</a><br />	</td>
  </tr>
  <tr>
    <td width="50" valign="top">&nbsp;</td>
   <td colspan="2" valign="top"><br />
	<table border="0" cellspacing="0" cellpadding="2" width="610">
        <tr>
          <td class="subHeader" colspan="3"><p style="margin-top: 0;">Cluster Analysis... </p>
            <p style="margin-bottom: 0;">&nbsp;</p>            </td>
        </tr>
        <tr>
          <td width="320" height="250" rowspan="2" align="center" class="subHeader"><img src="logo.gif" alt="large product photo" width="250" height="250" border="0" /></td>
          <td width="30" rowspan="2">&nbsp;
          </td>
        </tr>
        
        <tr>
       		<td valign="top" class="bodyText">
	       			<b><h3>Cluster Formation:</h3></b>
	  <% 
	    File mainFolder = new File("resources\\clustered");
		out.println("<ul>");
        for (File main : mainFolder.listFiles()) 
        { 
        		out.print("<li><h3>"+main.getName()+"</h3></li>");
        		File subFolder = new File("resources\\clustered\\"+main.getName());
        		int counter=1;
        		for (File sub : subFolder.listFiles()) 
        		{
        			out.print("<h4>"+counter+":"+sub.getName()+"&nbsp&nbsp</h4>");
        			counter++;
        		}
        }
      	
      %>
<h3> Select Feature and Cluster to View Bar Graph: </h3>    
 <form action ="viewBarGraph.jsp" method ="post">
      <table>
      <tr>
     	 	<td>
     	 		      <h4><b>Select Feature:</b></h4>      
 						<select id ="selectfeature" name="selectfeature">
 						<%  
 						Map<String,String> hm = new HashMap<String,String>();
 						hm.put("0", "UniGram");
 						hm.put("1", "BiGram");
 						hm.put("2", "TriGram");
 						hm.put("3", "#Sentence");
 						hm.put("4", "POS");
 						hm.put("5", "Punctuation");
 						hm.put("6", "Capitalization");
 						hm.put("7", "Named Entity");
 						hm.put("8", "Positive Negative Words");
 						hm.put("9", "Urls");
 						hm.put("10", "other3");
 						
 						String[] feature = (String[])session.getAttribute("feature");

 						for(String selected_features:feature)
 						{
 							out.print("<option value='"+selected_features+"'>"+hm.get(selected_features)+"</option>");
 						}
 						out.print("</ul>");
 						
 						

 						%>
						</select>						
      		</td>
      		
     	 	<td>
     	 		      <h4><b>Select Cluster:</b></h4>       
 						<select id="selectcluster" name="selectcluster">
 						<% 
 				        for (File main : mainFolder.listFiles()) 
 				        {    	
 				        		out.print("<option value='"+main.getName()+"'>"+main.getName()+"</option>");
 				        }
 						%>
						</select>
						
      		</td>
           
      </tr>
      <tr>
      
      </tr>    	
</table>
<input type="submit" value="submit"/>
</form>



<h3>Select Cluster to View Word Cloud:</h3>     
 <form action ="ViewWordCloud.jsp" method ="post">
 <table>
 <tr>
 	 	<td>
     	 		      <h3><b>Select Cluster:</b></h3>       
 						<select id="selectcluster" name="selectcluster">
 						<% 
 				        for (File main : mainFolder.listFiles()) 
 				        {    	
 				        		out.print("<option value='"+main.getName()+"'>"+main.getName()+"</option>");
 				        }
 						%>
						</select> 	 	
 	 	
   	 	</td>
</tr>
</table>
<input type="submit" value="submit"/>
</form>
      
			</td>
        </tr>
        
      </table>	  </td>
	  <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="50">&nbsp;</td>
    <td width="350">&nbsp;</td>
    <td width="360">&nbsp;</td>
	<td width="100%">&nbsp;</td>
  </tr>
</table>
<br />
    
</body>
</html>