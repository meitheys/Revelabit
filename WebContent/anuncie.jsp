<%@page import="beans.AnuncianteBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    
<title>Anuncie</title>    
    
	<%@include file="topo.jsp" %>

	<%
	
	
	
	AnuncianteBean ab = (AnuncianteBean) session.getAttribute("Anunciante");
		
	%>

	<img src="imagens/publicacao.png" class="pub">
	
	
	<form action="FileUploadHandler" method="post" enctype="multipart/form-data">
	
	<div class="nomePublicador">
    <label for="exampleInputPassword1"></label>
    <input type="text" value="" class="form-control" name="nomePublicador" id="nomePublicador"  placeholder="Informe o seu nome de Anunciante" maxlenght="50">
  	</div>
	
	<div class="tituloPublicacao">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="tituloPub" id="tituloPub"  placeholder="Titulo da Publica��o" maxlenght="70">
  	</div>
 	 	
  	<div class="input-group">
  	<div class="input-group-prepend">
    <span class="input-group-text" id="span">Descri��o da Publica��o</span>
  	</div>
  	<textarea class="form-control" aria-label="With textarea" name="conteudoPub"  id="conteudoPub" maxlenght="900"></textarea>
	</div>
	
	<div class="input-group">
    <label for="exampleInputPassword1"></label>
    <input type="text" class="form-control" name="preco" id="preco"  placeholder="Pre�o do produto/servi�o" maxlenght="100">
  	</div>
	
	<select id=cbServico name="cbServico">
    <option>Selecione o Servi�o</option>
    <option>Sa�de</option>
    <option>Manuten��o</option>
    <option>Aulas</option>
    <option>Consultoria</option>
	</select> 
	
	<div>
	<input type="text" name="file_name"><br>
	</div>
	
	<div>
	<input type="file" name="file" class="imagemPub" id="file" multiple onchange="GetFileSizeNameAndType()"/>
	</div>
	
	<div id="fp"></div>
	<p>
		<div id="divTotalSize"></div>
	</p>
	
	<div>
	<button value="upload" id="botaoPublicar" class="btn btn-success">Publicar
	</div>
	
	</form>
	
	<%
	
	String file_name=(String)request.getParameter("filename");
    if(file_name!=null){
 	   out.println(file_name+" File uploaded successfuly");
    }
	
	%>
	
	
	
</body>

	<%@include file="footer.jsp" %>

</html>