<%-- 
    Document   : sobre
    Created on : 11/09/2019, 19:23:16
    Author     : gumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/paulista.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="menu.jsp">
            <jsp:param name="item" value="sobre" />
        </jsp:include>
        <img src="logo.png" id="sobre">
        <h1 id="sobre">O melhor e mais rápido Comercio de Internet do Brasil</h1>
    </body>
</html>
