<!doctype html>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="./header.jsp" />
	 	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
	 	<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
	 	<link href="./assets/css/customstyle.css" rel="stylesheet">
	   
	   <title>Login</title>
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class="alert alert-danger alert-dismissible fade show ${errorMessage==null?'d-none':'' }" role="alert">
					  ${errorMessage}
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
					<div class="alert alert-danger alert-dismissible fade show d-none" role="alert">
					  Esempio di operazione fallita!
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
					<div class="alert alert-info alert-dismissible fade show d-none" role="alert">
					  Aggiungere d-none nelle class per non far apparire
					   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
			  
			  <div class='card'>
				    <div class='card-header text-center'>
				        <h5>Accedi al Sistema</h5> 
				    </div>
				    <div class='card-body'>
		
		
							<form method="post" action="LoginServlet" class="row g-3" novalidate="novalidate">
							
								<div class="col-md-6">
									<label for="inputUsername" class="form-label">Username</label>
									<input type="text" name="inputUsername" id="inputUsername" class="form-control" placeholder="Inserire Username"  >
								</div>
								
								<div class="col-md-6">
									<label for="inputPassword" class="form-label">Password</label>
									<input type="text" name="inputPassword" id="inputPassword" class="form-control" placeholder="Inserire la Password"  >
								</div>
									
							<div class="col-12">
								<button type="submit" name="submit" value="submit" id="submit" class="btn btn-info">Sign In</button>
							</div>
		
						</form>
					<!-- end card-body -->			   
				    </div>
				<!-- end card -->
				</div>		
					  
			    
			  <!-- end container -->  
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="./footer.jsp" />
	  </body>
</html>