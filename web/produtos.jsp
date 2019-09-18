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


        <jsp:include page="menu.jsp">
            <jsp:param name="item" value="produtos" />
        </jsp:include>
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
                URL Imagem: <input name="img">

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
                
            <div class="container">
                <div class="card-deck mb-3 text-center">
                    


                    <%
                        for(int i=0; i<Produto.getLista().size(); i++){
                            Produto p = Produto.getLista().get(i);
                    %>
                    <div class="card mb-4 shadow-sm">
                        <div class="row">
                                <div class="card-header ">
                                    <h4 class="my-0 font-weight-normal"><% out.print(p.getDescricao()); %></h4>
                                </div>
                                <div class="card-body">
                                    <img src="<% out.print(p.getImg()); %> " width="90%">
                                    <h1 class="card-title pricing-card-title">R$<% out.print(p.getPreco()); %> <small class="text-muted"></small></h1>
                                    <ul class="list-unstyled mt-3 mb-4">
                                      <li> </li>
                                      <li> </li>
                                      <li> </li>
                                      <li> </li>
                                    </ul>
                                    <button type="button" class="btn btn-lg btn-block btn-outline-primary">Adicionar ao carrinho</button>
                                </div>
                            </div>
                    <%
                        }
                    %>
                    </div>   
                </div>
                 </div>
            <script src="js/bootstrap.min.js"></script>
        </div>
    </body>
</html>
