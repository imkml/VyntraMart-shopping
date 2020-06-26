<div class="container">

	<div class="row">
		

		<div class="col-md-12">
		<!-- Breadcrumb component -->
		<div class="row">
			
				<div class="col-lg-12">
				
				<c:if test="${userClickAllMenProducts==true}">
					<ol class="breadcrumb">
					
						<li class="breadcrumb-item"> <a href="${contextRoot}/home">Home</a></li>
						
						<li class="breadcrumb-item active">Men</li>
					
					
					</ol>
				
				</c:if>
				
				<c:if test="${userClickMenCategoryProducts==true}">
					<ol class="breadcrumb">
					
						<li class="breadcrumb-item"> <a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item"> <a href="${contextRoot}/show/all/MenProducts">Men</a></li>
						<li class="breadcrumb-item active">${menCategory.name}</li>
					
					
					</ol>
				
				</c:if>
				
				</div>
		
		</div>
		
		
		</div>


	</div>




</div>