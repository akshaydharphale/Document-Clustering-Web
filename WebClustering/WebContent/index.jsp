<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
          <td class="subHeader" colspan="3"><p style="margin-top: 0;">Upload Your Files Here... </p>
            <p style="margin-bottom: 0;">&nbsp;</p>            </td>
        </tr>
        <tr>
          <td width="320" height="250" rowspan="2" align="center" class="subHeader"><img src="logo.gif" alt="large product photo" width="250" height="250" border="0" /></td>
          <td width="30" rowspan="2">&nbsp;
          
          </td>
        </tr>
        <tr>
       		<td valign="top" class="bodyText">
	        Upload Files<br>
				<form action="sampleUploading.jsp" method="post" enctype="multipart/form-data">
  					<input name="file" type="file" multiple><br>
  					<input type="submit" value="upload">
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