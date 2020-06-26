<div class="container">

	<div class="row">

	<h3>Women Product</h3>

		
			
				<div class="col-lg-12">
				
				<c:if test="${userClickAllWomenProducts==true}">
					<ol class="breadcrumb">
					
						<li class="breadcrumb-item"> <a href="${contextRoot}/home">Home</a></li>
						
						<li class="breadcrumb-item active">Women</li>
					
					
					</ol>
				
				</c:if>
				
				<c:if test="${userClickWomenCategoryProducts==true}">
					<ol class="breadcrumb">
					
						<li class="breadcrumb-item"> <a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item"> <a href="${contextRoot}/show/all/womenProducts">Women</a></li>
						<li class="breadcrumb-item active">${womenCategory.name}</li>
					
					
					</ol>
				
				</c:if>
				
				</div>
		
		</div>
		
		
		</div>


	