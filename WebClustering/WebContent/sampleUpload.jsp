<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Uploader</title>
</head>
<body>
<h3>File Upload:</h3>
Select a file to upload: <br />

<form action="sampleUploading.jsp" method="post" enctype="multipart/form-data">
  <input name="file" type="file" multiple>
  <input type="submit">
</form>
</body>
</html>