/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Paulista
 */
public class Login extends HttpServlet {
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String email = request.getParameter("email");
      String senha = request.getParameter("senha");

      if(email.equals("adm@ifpr.edu.br") && senha.equals("admin")){
         request.getSession().setAttribute("logado", true);
         response.sendRedirect("produtos.jsp");
      }
      else{
         response.sendRedirect("login.jsp");
         request.getSession().setAttribute("logado", false);
      }
   }

}
