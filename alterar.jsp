<%-- 
    Document   : alterar
    Created on : 21/02/2015, 23:18:26
    Author     : marcosfernando
--%>

<%@include file="conexao.jsp" %>

<%
    String id = request.getParameter("id");
    String nome = request.getParameter("nome");
    String cidade = request.getParameter("cidade");
    String telefone = request.getParameter("telefone");
    
    String sql = "update clientes set "
                    + "nome = '"+nome+"',"
                    + "cidade = '"+cidade+"',"
                    + "telefone = '"+telefone+"'"
                    + "where id = '"+id+"'";
    
 try{        
   Statement stmt = conexao.createStatement();
   int alterar = stmt.executeUpdate(sql); 
   
   if(alterar >= 1){
       response.sendRedirect("index.jsp");
   } else {
       out.println("erro!");
   }
        
            
}
catch(Exception e){
    out.println("Erro: " + e.getMessage());
}
 %>