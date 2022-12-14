<!doctype html>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	 	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
	 	<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
	 	<link href="./assets/css/customstyle.css" rel="stylesheet">
	   
	   <title>Visualizza Biglietto Da Eliminare</title>
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class='card'>
					    <div class='card-header'>
					        <h5>Visualizza dettaglio</h5>
					    </div>
					    
					
					    <div class='card-body'>
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Provenienza</dt>
							  <dd class="col-sm-9">${visualizzaBigliettoEliminareAttr.provenienza}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Destinazione:</dt>
							  <dd class="col-sm-9">${visualizzaBigliettoEliminareAttr.destinazione}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Prezzo:</dt>
							  <dd class="col-sm-9">${visualizzaBigliettoEliminareAttr.prezzo}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data:</dt>
							  <dd class="col-sm-9"><fmt:formatDate value="${visualizzaBigliettoEliminareAttr.data}"/></dd>
					    	</dl> 	
					    </div>
					    
					    
					    <div class='card-footer'>
					    <form action="ExecuteDeleteBigliettoServlet" method="post">
					      <!--  <a class='btn btn-outline-primary' style='width:100px'>-->
					        <button type="submit" name="submit" value="submit" id="submit" class="btn btn-danger">Conferma</button>
					           <!-- <i class='fa fa-chevron-right'>Conferma</i> -->
								<input type="hidden" name="idBigliettoDaEliminare" value="${visualizzaBigliettoEliminareAttr.id}">
					       <!-- </a>-->
					        <a href="ListBigliettiServlet" class='btn btn-outline-secondary' style='width:80px'>
					            <i class='fa fa-chevron-left'></i> Back
					        </a>
					    </form>
					    </div>
					<!-- end card -->
					</div>	
			  
			  <!-- end container -->  
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="../footer.jsp" />
	  </body>
</html>