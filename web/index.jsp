<%--
    Document   : index
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
            <jsp:param name="item" value="ofertas" />
        </jsp:include>
        <h1>Ofertas da Loja!</h1>
            <div class="container">
                <div class="card-deck mb-3 text-center">
                    
               

            <%
                for(int i=0; i<Produto.getLista().size(); i++){
                    Produto p = Produto.getLista().get(i);
            %>
            <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal"><% out.print(p.getDescricao()); %></h4>
                        </div>
                        <div class="card-body">
                            <img src="<% out.print(p.getImg()); %>">
                            <h1 class="card-title pricing-card-title">R$<% out.print(p.getPreco()); %> <small class="text-muted"></small></h1>
                            <ul class="list-unstyled mt-3 mb-4">
                              <li> </li>
                              <li> </li>
                              <li> </li>
                              <li> </li>
                            </ul>
                            <button type="button" class="btn btn-lg btn-block btn-outline-primary">Carrinho</button>
                        </div>
                    </div>
            <%
                }
            %>
            </div>   
         </div>

        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
