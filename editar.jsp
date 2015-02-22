<%-- 
    Document   : editar.jsp
    Created on : 21/02/2015, 23:36:57
    Author     : marcosfernando
--%>

<%@include file="conexao.jsp" %>
<%@include file="topo.jsp"%>


<div class="jumbotron">
    <h1>Editar Cliente</h1>
</div>

<form action="alterar.jsp" method="get">
    
    <% 
        String id = request.getParameter("id"); 
                
        String sql =  "select * from clientes where id = '"+id+"' ";
    
        Statement stmt = conexao.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        
        rs.next();
  
    %>
    
    
    <%@include file="form-editar.jsp" %>

    <p><input type="submit" class="btn btn-primary" value="Alterar"></p>
</form>


<%@include file="footer.jsp"%>


