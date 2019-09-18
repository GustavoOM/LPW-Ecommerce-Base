<%@page import="db.Mock"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Mock.makeMock();
    String item = request.getParameter("item");
    String active = "class=\"active\"";
    
    String c_ofertas = item.equals("ofertas")? active : "";
    String c_produto = item.equals("produtos")? active : "";
    String c_sobre = item.equals("sobre")? active : "";
    String c_login = item.equals("login")? active : "";
%>


<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  <img style="width: 100px; margin: 0px" src="logo.png" class="my-0 mr-md-auto font-weight-normal">
  <nav class="my-2 my-md-0 mr-md-3">
      <a class="<%=c_ofertas %> p-2 text-dark" href="index.jsp" >Ofertas</a>
      <a class="<%= c_produto%> p-2 text-dark" href="produtos.jsp">Produtos</a>
      <a class="<%= c_sobre%> p-2 text-dark" href="sobre.jsp">Sobre</a>
    </ul>
</nav>
  <a class="btn btn-outline-primary" href="login.jsp">Entrar</a>
</div>
