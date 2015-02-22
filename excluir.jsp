<%-- 
    Document   : excluir
    Created on : 21/02/2015, 23:16:03
    Author     : marcosfernando
--%>

<%@include file="conexao.jsp"%>

<%
  
    String id = request.getParameter("id");
    String sql = "delete from clientes where id = '"+id+"'";
    
    try{
        
        Statement stmt = conexao.createStatement();
        int excluir = stmt.executeUpdate(sql);
        
        if(excluir >= 1) {
           response.sendRedirect("index.jsp");
        } else {
            out.println("Ops, erro!");
        }
    
    }catch(Exception e){
        out.println("Erro: " + e.getMessage());
    }  
    
    
 %>
    