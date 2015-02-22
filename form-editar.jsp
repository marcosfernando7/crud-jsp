<%-- 
    Document   : form.jsp
    Created on : 21/02/2015, 23:37:50
    Author     : marcosfernando
--%>

<input type="hidden" name="id" value="<% out.println(rs.getString("id")); %>">

<p><label for="nome">Nome</label><br>
    <input type="text" name="nome" id="nome" class="form-control" value="<% out.println(rs.getString("nome")); %>" required="required">            
  </p>

  <p><label for="cidade">Cidade</label><br>
      <input type="text" name="cidade" id="cidade" class="form-control" value="<% out.println(rs.getString("cidade")); %>" required="required">            
  </p>

   <p><label for="telefone">Telefone</label><br>
       <input type="text" name="telefone" id="telefone" class="form-control" value="<% out.println(rs.getString("telefone")); %>" required="telefone">            
  </p>