<title>In�cio</title>

<%@include file="topo.jsp" %>
		
	<% 
	
	String redirecionamento = "";
	
	Object A = session.getAttribute("Usuario");
	Object B = session.getAttribute("Anunciante");
	
	if(B==null){
		redirecionamento = "cadastrarAnunciante.jsp";
	}else{
		redirecionamento = "anuncie.jsp";
	}
		
	%>
		
	<!-- Banner -->
    <section class="fotorama wow fadeInUp" data-width="100%" data-loop="true" data-autoplay="true" id="banner">
        <img src="imagens/banner/banner.png" id="fotoB1">
        <img src="imagens/banner/banner1.png" id="fotoB2">
        <img src="imagens/banner/banner2.png" id="fotoB3">
    </section>
    
    <hr class="linha2 wow fadeInUp">
    	
	<a href="consultoria.jsp" class="wow fadeInUp"><img src="imagens/consultoria.png" class="consultoriabanner wow fadeInUp"/></a>	
	
	<a href="aulas.jsp"><img src="imagens/aulas.png" class="aulasbanner wow fadeInUp"/></a>
			
	<a href="saude.jsp"><img src="imagens/saude.png" class="saudebanner wow fadeInUp"/></a>	
		
	<a href="manutencao.jsp"><img src="imagens/manuten��o.png" class="manutencaobanner wow fadeInUp"/></a>	
	
	<hr class="linha3">
		
	<h1 class="vantagem">Vantagens do Site!</h1>
	
	<ul>
	<br>
	<li class="textoVantagem">Para voc� anunciante, aqui voc� pode anunciar o seu neg�cio/servi�o facilmente. Chega de pagar rios de dinheiros por uma publicidade.</li>
	<br>
	<li class="textoVantagem2">Aqui o seu investimento � bem feito, ganhe centenas de acessos em pouquissimo tempo!</li>
	<br>
	<li class="textoVantagem3">Para voc� que procura um servi�o, aqui � seu lugar, aqui voc� encontra tudo que precisa no momento!</li>
	</ul>
	
	<a href="<%out.println(redirecionamento); %>"><img src="imagens/anuncie.png" class="anunciebanner wow fadeInUp"/></a>		
	<a href="https://www.havan.com.br/"><img src="imagens/havanLogo.png" class="havan wow fadeInUp" id="havan"/></a>
	<a href="https://www.philips.com.br/"><img src="imagens/philipsLogo.png" class="philips wow fadeInUp" id="philips"/></a>	
	<a href="https://www4.benner.com.br/"><img src="imagens/bennerLogo.png" class="benner wow fadeInUp" id="benner"/></a>	
	<a href="https://www.senior.com.br/"><img src="imagens/seniorLogo.png" class="senior wow fadeInUp" id="senior"/></a>
		
	
	<a href="#" id="scroll" style="display: none;"><span></span></a>
	
</body>

	<%@ include file="footer.jsp" %>

</html>
