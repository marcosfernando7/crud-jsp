<%@ 
    page language="java" contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"        
%>  
    
    <%    
    Connection conexao = null;  
    
    try{    
         Class.forName("com.mysql.jdbc.Driver");  //Descobrindo o driver    
         
         conexao = DriverManager.getConnection("jdbc:mysql://localhost/mysql", "root", "");    //conectando com o banco com jdbc   

         //out.println("conexão realizada");    
         
//    }catch (ClassNotFoundException erroClass){    
//           out.println("Class Driver não foi localizado, erro = " + erroClass); 
           
    }catch (SQLException e){    
           out.println("Erro na conexão ao banco de dados, erro: " + e.getMessage());    
    }    

    %>    
   