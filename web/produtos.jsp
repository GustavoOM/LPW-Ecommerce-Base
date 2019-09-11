<%--
    Document   : produtos
    Created on : 21/08/2019, 17:26:44
    Author     : Paulista
--%>

<%@page import="modelos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Loja</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="css/paulista.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>


        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp"><img id="nav" src="logoBranco.png"></a>
            </div>
            <ul class="nav navbar-nav">
              <li><a href="index.jsp">Ofertas</a></li>
              <li class="active"><a href="produtos.jsp">Produtos</a></li>
              <li><a href="sobre.jsp">Sobre</a></li>
            </ul>


            <ul class="nav navbar-nav navbar-right">
              <li><a href="login.jsp">Entrar</a></li>

            </ul>

          </div>

        </nav>
        <div class="container">

            <h1>Produtos da Loja</h1>
            <%
                boolean logado = false;
                if(session != null && session.getAttribute("logado") != null)
                    logado = (boolean)session.getAttribute("logado");
                if(logado){
                
            %>

            <form action="AddProduto" method="post">
               Descrição: <input name="descricao">
                Preço: <input name="preco" type="number" step="0.01">
                Quantidade <input name="qtd" type="number" min="1" value="1">

                <button type="submit">OK</button>
            </form>
            
            <%
               }
            %>

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Descrição</th>
                        <th>Valor</th>
                        <th>Quantidade</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(int i=0; i<Produto.getLista().size(); i++){

                            Produto p = Produto.getLista().get(i);
                            out.println("<tr>");
                            out.println("<td> "+ (i+1) +" </td>");
                            out.println("<td> "+ p.getDescricao() +" </td>");
                            out.println("<td> "+ p.getPreco()+" </td>");
                            out.println("<td> "+ p.getQtd() +" </td>");
                            out.println("</tr>");
                        }

                    %>
                </tbody>
            </table>

            <script src="js/bootstrap.min.js"></script>
        </div>
    </body>
</html>
