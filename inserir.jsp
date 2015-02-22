<%-- 
    Document   : inserir
    Created on : 19/02/2015, 23:15:25
    Author     : marcosfernando
--%>

<%@include file="conexao.jsp" %>
        
        <%
            String nome = request.getParameter("nome");
            String cidade = request.getParameter("cidade");
            String telefone = request.getParameter("telefone");
            
            String sql = "insert into clientes ( nome, cidade, telefone) "
                    + "values ('"+nome+"','"+cidade+"','"+telefone+"')";
            
            try{
              
              Statement stmt = conexao.createStatement(); // cria objeto sql e envia instruçoes ao banco
              int inserir = stmt.executeUpdate(sql); //executa uma atualização/inserção/delete no banco 
                
              if(inserir >= 1){
                  response.sendRedirect("index.jsp");
//                  out.println("ok")
              }else {
                  out.println("erro!");
              }                      
               
            
            }catch(Exception e){
               out.println("Erro" + e.getMessage());
            }

        %>