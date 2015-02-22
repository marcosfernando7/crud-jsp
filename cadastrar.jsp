<%@include file="topo.jsp"%>


<div class="jumbotron">
    <h1>Cadastrar Cliente</h1>
</div>

<p>
    <a href="index.jsp" class="btn btn-primary"> Todos Clientes </a>
</p>

<form action="inserir.jsp" method="get">

    <%@include file="form-inserir.jsp" %>
    
    <p><input type="submit" class="btn btn-success" value="Enviar"></p>
</form>

<%@include file="footer.jsp"%>


