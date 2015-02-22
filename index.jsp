<%-- 
    Document   : index
    Created on : 21/02/2015, 21:49:53
    Author     : marcosfernando
--%>
  
<%@include file="conexao.jsp" %>

<%@include file="topo.jsp" %>

<div class="jumbotron">
    <h1>Todos Registros</h1>
</div>

<p>
    <a href="cadastrar.jsp" class="btn btn-primary">Cadastrar Cliente</a>
</p>

<table class="table table striped">
    <thead>
        <th>Nome</th>
        <th>Cidade</th>
        <th>Telefone</th> 
        <th>Editar</th>
        <th>Excluir</th>
    </thead>
    
    <tbody>
   <% 
    
    String sql = "select * from clientes"; 
    
    try{ 

    Statement stmt = conexao.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
    
      
    while(rs.next()){ %>
    <tr>
        <td><% out.println(rs.getString("nome")); %></td>
        <td><% out.println(rs.getString("cidade")); %></td>
        <td><% out.println(rs.getString("telefone")); %></td>
        <td><a href="editar.jsp?id=<% out.println(rs.getInt("id")); %>" class="btn btn-info">Editar</a></td>
        <td><a href="excluir.jsp?id=<% out.println(rs.getInt("id")); %>" class="btn btn-danger">Excluir</a></td>
    </tr>

       <%  }

    } catch(Exception e){
        out.println("Erro: " + e.getMessage());
    }
    
 
%>
        
    </tbody> 
</table>

<%@include file="footer.jsp" %>
