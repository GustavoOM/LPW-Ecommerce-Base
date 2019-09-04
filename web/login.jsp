<%--
    Document   : login
    Created on : 04/09/2019, 17:27:09
    Author     : Paulista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
      <title>Minha Loja</title>
   </head>
   <body>
      <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <div class="navbar-header">
              <a class="navbar-brand" href="index.jsp">Minha Loja</a>
            </div>
            <ul class="nav navbar-nav">
              <li class="active"><a href="index.jsp">Ofertas</a></li>
              <li><a href="produtos.jsp">Produtos</a></li>
              <li><a href="sobre.jsp">Sobre</a></li>
            </ul>


            <ul class="nav navbar-nav navbar-right">
              <li><a href="login.jsp">Entrar</a></li>

            </ul>

          </div>

        </nav>
      <h1>Entrar no Sistema</h1>
      <form action="Login" method="post">
        <div class="form-group">
          <label for="exampleInputEmail1">Email:</label>
          <input name="email" type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Senha:</label>
          <input name="senha" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <button type="submit" class="btn btn-default">Entrar</button>
      </form>
      <script src="js/bootstrap.min.js" type="text/javascript"></script>
   </body>
</html>
