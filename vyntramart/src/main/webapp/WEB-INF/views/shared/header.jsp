<!-- Header section -->
<header class="header-section">
	<div class="header-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 text-center text-lg-left">
					<!-- logo -->
					<a href="${contextRoot}/home" class="site-logo"> <img
						src="${img}/logo.png" alt="">
					</a>
				</div>
				<div class="col-xl-6 col-lg-5">
					<form class="header-search-form">
						<input type="text" placeholder="Search on vyntramart ....">
						<button>
							<i class="flaticon-search"></i>
						</button>
					</form>
				</div>
				<div class="col-xl-4 col-lg-5">
					<div class="user-panel">
						<div class="up-item">
							<i class="flaticon-profile"></i> <a href="#">Sign</a> In or <a
								href="#">Create Account</a>
						</div>
						<div class="up-item">
							<div class="shopping-card">
								<i class="flaticon-bag"></i> <span>0</span>
							</div>
							<a href="#">Shopping Cart</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="main-navbar">
		<div class="container">
			<!-- menu -->
			<ul class="main-menu">
				<li id="home"><a href="${contextRoot}/home">Home</a></li>
				<li id="women"><a href="${contextRoot}/show/all/womenProducts">Women</a>
				
				<!-- Dynamically getting list of ctgory for women -->
				<ul class="sub-menu">
					<c:forEach items="${womenCategoryDAO}" var="womenCategory">
						<li><a href="${contextRoot}/show/women/${womenCategory.id}/products">${womenCategory.name}</a></li>
								
					</c:forEach>
						<!-- Dynamically getting list of ctgory for men -->
				
				</ul></li>
				<li id="men"><a href="${contextRoot}/show/all/menProducts">Men</a>
				<ul class="sub-menu">
					<c:forEach items="${menCategoryDAO}" var="category">
						<li><a href="${contextRoot}/show/men/${category.id}/products">${category.name}</a></li>
					</c:forEach>
				</ul></li>
				<li id="about"><a href="${contextRoot}/about">About Us</a></li>
				<li id="contact"><a href="${contextRoot}/contact">Contact
						Us</a></li>

			</ul>
		</div>
	</nav>
</header>
<!-- Header section end -->
