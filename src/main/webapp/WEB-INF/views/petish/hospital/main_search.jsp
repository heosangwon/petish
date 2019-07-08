<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Search Hospital</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">
<!-- Google fonts - Roboto-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
<!-- Bootstrap Select-->
<link rel="stylesheet"
	href="vendor/bootstrap-select/css/bootstrap-select.min.css">
<!-- owl carousel-->
<link rel="stylesheet"
	href="vendor/owl.carousel/assets/owl.carousel.css">
<link rel="stylesheet"
	href="vendor/owl.carousel/assets/owl.theme.default.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.lightblue.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon and apple touch icons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="img/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="img/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="img/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="img/apple-touch-icon-152x152.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">


<meta charset="utf-8">
<title>키워드로 장소검색하고 목록으로 표출하기</title>
<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}
</style>








</head>
<body>
	<div id="all">
		<!-- Top bar-->
		<div class="top-bar">
			<div class="container">
				<div class="row d-flex align-items-center">
					<div class="col-md-6 d-md-block d-none">
						<p>Contact us on +420 777 555 333 or hello@universal.com.</p>
					</div>
					<div class="col-md-6">
						<div class="d-flex justify-content-md-end justify-content-between">
							<ul class="list-inline contact-info d-block d-md-none">
								<li class="list-inline-item"><a href="#"><i
										class="fa fa-phone"></i></a></li>
								<li class="list-inline-item"><a href="#"><i
										class="fa fa-envelope"></i></a></li>
							</ul>
							<div class="login">
								<a href="#" data-toggle="modal" data-target="#login-modal"
									class="login-btn"><i class="fa fa-sign-in"></i><span
									class="d-none d-md-inline-block">Sign In</span></a><a
									href="customer-register.html" class="signup-btn"><i
									class="fa fa-user"></i><span class="d-none d-md-inline-block">Sign
										Up</span></a>
							</div>
							<ul class="social-custom list-inline">
								<li class="list-inline-item"><a href="#"><i
										class="fa fa-facebook"></i></a></li>
								<li class="list-inline-item"><a href="#"><i
										class="fa fa-google-plus"></i></a></li>
								<li class="list-inline-item"><a href="#"><i
										class="fa fa-twitter"></i></a></li>
								<li class="list-inline-item"><a href="#"><i
										class="fa fa-envelope"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Top bar end-->
		<!-- Login Modal-->
		<div id="login-modal" tabindex="-1" role="dialog"
			aria-labelledby="login-modalLabel" aria-hidden="true"
			class="modal fade">
			<div role="document" class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 id="login-modalLabel" class="modal-title">Customer Login</h4>
						<button type="button" data-dismiss="modal" aria-label="Close"
							class="close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="customer-orders.html" method="get">
							<div class="form-group">
								<input id="email_modal" type="text" placeholder="email"
									class="form-control">
							</div>
							<div class="form-group">
								<input id="password_modal" type="password"
									placeholder="password" class="form-control">
							</div>
							<p class="text-center">
								<button class="btn btn-template-outlined">
									<i class="fa fa-sign-in"></i> Log in
								</button>
							</p>
						</form>
						<p class="text-center text-muted">Not registered yet?</p>
						<p class="text-center text-muted">
							<a href="customer-register.html"><strong>Register
									now</strong></a>! It is easy and done in 1 minute and gives you access to
							special discounts and much more!
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Login modal end-->
		<!-- Navbar Start-->
		<header class="nav-holder make-sticky">
			<div id="navbar" role="navigation" class="navbar navbar-expand-lg">
				<div class="container">
					<a href="index.html" class="navbar-brand home"><img
						src="img/logo.png" alt="Universal logo"
						class="d-none d-md-inline-block"><img
						src="img/logo-small.png" alt="Universal logo"
						class="d-inline-block d-md-none"><span class="sr-only">Universal
							- go to homepage</span></a>
					<button type="button" data-toggle="collapse"
						data-target="#navigation"
						class="navbar-toggler btn-template-outlined">
						<span class="sr-only">Toggle navigation</span><i
							class="fa fa-align-justify"></i>
					</button>
					<div id="navigation" class="navbar-collapse collapse">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item dropdown active"><a
								href="javascript: void(0)" data-toggle="dropdown"
								class="dropdown-toggle">Home <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li class="dropdown-item"><a href="index.html"
										class="nav-link">Option 1: Default Page</a></li>
									<li class="dropdown-item"><a href="index2.html"
										class="nav-link">Option 2: Application</a></li>
									<li class="dropdown-item"><a href="index3.html"
										class="nav-link">Option 3: Startup</a></li>
									<li class="dropdown-item"><a href="index4.html"
										class="nav-link">Option 4: Agency</a></li>
									<li class="dropdown-item dropdown-submenu"><a
										id="navbarDropdownMenuLink2" href="#" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"
										class="nav-link dropdown-toggle">Dropdown link</a>
										<ul aria-labelledby="navbarDropdownMenuLink2"
											class="dropdown-menu">
											<li class="dropdown-item"><a href="#" class="nav-link">Action</a></li>
											<li class="dropdown-item"><a href="#" class="nav-link">Another
													action</a></li>
											<li class="dropdown-item"><a href="#" class="nav-link">Something
													else here</a></li>
										</ul></li>
								</ul></li>
							<li class="nav-item dropdown menu-large"><a href="#"
								data-toggle="dropdown" class="dropdown-toggle">Features<b
									class="caret"></b></a>
								<ul class="dropdown-menu megamenu">
									<li>
										<div class="row">
											<div class="col-lg-6">
												<img src="img/template-easy-customize.png" alt=""
													class="img-fluid d-none d-lg-block">
											</div>
											<div class="col-lg-3 col-md-6">
												<h5>Shortcodes</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a
														href="template-accordions.html" class="nav-link">Accordions</a></li>
													<li class="nav-item"><a href="template-alerts.html"
														class="nav-link">Alerts</a></li>
													<li class="nav-item"><a href="template-buttons.html"
														class="nav-link">Buttons</a></li>
													<li class="nav-item"><a
														href="template-content-boxes.html" class="nav-link">Content
															boxes</a></li>
													<li class="nav-item"><a href="template-blocks.html"
														class="nav-link">Horizontal blocks</a></li>
													<li class="nav-item"><a
														href="template-pagination.html" class="nav-link">Pagination</a></li>
													<li class="nav-item"><a href="template-tabs.html"
														class="nav-link">Tabs</a></li>
													<li class="nav-item"><a
														href="template-typography.html" class="nav-link">Typography</a></li>
												</ul>
											</div>
											<div class="col-lg-3 col-md-6">
												<h5>Header variations</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a
														href="template-header-default.html" class="nav-link">Default
															sticky header</a></li>
													<li class="nav-item"><a
														href="template-header-nosticky.html" class="nav-link">No
															sticky header</a></li>
													<li class="nav-item"><a
														href="template-header-light.html" class="nav-link">Light
															header</a></li>
												</ul>
											</div>
										</div>
									</li>
								</ul></li>
							<li class="nav-item dropdown menu-large"><a href="#"
								data-toggle="dropdown" class="dropdown-toggle">Portfolio <b
									class="caret"></b></a>
								<ul class="dropdown-menu megamenu">
									<li>
										<div class="row">
											<div class="col-lg-6">
												<img src="img/template-homepage.png" alt=""
													class="img-fluid d-none d-lg-block">
											</div>
											<div class="col-lg-3 col-md-6">
												<h5>Portfolio</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="portfolio-2.html"
														class="nav-link">2 columns</a></li>
													<li class="nav-item"><a
														href="portfolio-no-space-2.html" class="nav-link">2
															columns with negative space</a></li>
													<li class="nav-item"><a href="portfolio-3.html"
														class="nav-link">3 columns</a></li>
													<li class="nav-item"><a
														href="portfolio-no-space-3.html" class="nav-link">3
															columns with negative space</a></li>
													<li class="nav-item"><a href="portfolio-4.html"
														class="nav-link">4 columns</a></li>
													<li class="nav-item"><a
														href="portfolio-no-space-4.html" class="nav-link">4
															columns with negative space</a></li>
													<li class="nav-item"><a href="portfolio-detail.html"
														class="nav-link">Portfolio - detail</a></li>
													<li class="nav-item"><a href="portfolio-detail-2.html"
														class="nav-link">Portfolio - detail 2</a></li>
												</ul>
											</div>
											<div class="col-lg-3 col-md-6">
												<h5>About</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="about.html"
														class="nav-link">About us</a></li>
													<li class="nav-item"><a href="team.html"
														class="nav-link">Our team</a></li>
													<li class="nav-item"><a href="team-member.html"
														class="nav-link">Team member</a></li>
													<li class="nav-item"><a href="services.html"
														class="nav-link">Services</a></li>
												</ul>
												<h5>Marketing</h5>
												<ul class="list-unstyled">
													<li class="nav-item"><a href="packages.html"
														class="nav-link">Packages</a></li>
												</ul>
											</div>
										</div>
									</li>
								</ul></li>
							<!-- ========== FULL WIDTH MEGAMENU ==================-->
							<li class="nav-item dropdown menu-large"><a href="#"
								data-toggle="dropdown" data-hover="dropdown" data-delay="200"
								class="dropdown-toggle">All Pages <b class="caret"></b></a>
								<ul class="dropdown-menu megamenu">
									<li>
										<div class="row">
											<div class="col-md-6 col-lg-3">
												<h5>Home</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="index.html"
														class="nav-link">Option 1: Default Page</a></li>
													<li class="nav-item"><a href="index2.html"
														class="nav-link">Option 2: Application</a></li>
													<li class="nav-item"><a href="index3.html"
														class="nav-link">Option 3: Startup</a></li>
													<li class="nav-item"><a href="index4.html"
														class="nav-link">Option 4: Agency</a></li>
													<li class="nav-item"><a href="index5.html"
														class="nav-link">Option 5: Portfolio</a></li>
												</ul>
												<h5>About</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="about.html"
														class="nav-link">About us</a></li>
													<li class="nav-item"><a href="team.html"
														class="nav-link">Our team</a></li>
													<li class="nav-item"><a href="team-member.html"
														class="nav-link">Team member</a></li>
													<li class="nav-item"><a href="services.html"
														class="nav-link">Services</a></li>
												</ul>
												<h5>Marketing</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="packages.html"
														class="nav-link">Packages</a></li>
												</ul>
											</div>
											<div class="col-md-6 col-lg-3">
												<h5>Portfolio</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="portfolio-2.html"
														class="nav-link">2 columns</a></li>
													<li class="nav-item"><a
														href="portfolio-no-space-2.html" class="nav-link">2
															columns with negative space</a></li>
													<li class="nav-item"><a href="portfolio-3.html"
														class="nav-link">3 columns</a></li>
													<li class="nav-item"><a
														href="portfolio-no-space-3.html" class="nav-link">3
															columns with negative space</a></li>
													<li class="nav-item"><a href="portfolio-4.html"
														class="nav-link">4 columns</a></li>
													<li class="nav-item"><a
														href="portfolio-no-space-4.html" class="nav-link">4
															columns with negative space</a></li>
													<li class="nav-item"><a href="portfolio-detail.html"
														class="nav-link">Portfolio - detail</a></li>
													<li class="nav-item"><a href="portfolio-detail-2.html"
														class="nav-link">Portfolio - detail 2</a></li>
												</ul>
												<h5>User pages</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="customer-register.html"
														class="nav-link">Register / login</a></li>
													<li class="nav-item"><a href="customer-orders.html"
														class="nav-link">Orders history</a></li>
													<li class="nav-item"><a href="customer-order.html"
														class="nav-link">Order history detail</a></li>
													<li class="nav-item"><a href="customer-wishlist.html"
														class="nav-link">Wishlist</a></li>
													<li class="nav-item"><a href="customer-account.html"
														class="nav-link">Customer account / change password</a></li>
												</ul>
											</div>
											<div class="col-md-6 col-lg-3">
												<h5>Shop</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="shop-category.html"
														class="nav-link">Category - sidebar right</a></li>
													<li class="nav-item"><a href="shop-category-left.html"
														class="nav-link">Category - sidebar left</a></li>
													<li class="nav-item"><a href="shop-category-full.html"
														class="nav-link">Category - full width</a></li>
													<li class="nav-item"><a href="shop-detail.html"
														class="nav-link">Product detail</a></li>
												</ul>
												<h5>Shop - order process</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="shop-basket.html"
														class="nav-link">Shopping cart</a></li>
													<li class="nav-item"><a href="shop-checkout1.html"
														class="nav-link">Checkout - step 1</a></li>
													<li class="nav-item"><a href="shop-checkout2.html"
														class="nav-link">Checkout - step 2</a></li>
													<li class="nav-item"><a href="shop-checkout3.html"
														class="nav-link">Checkout - step 3</a></li>
													<li class="nav-item"><a href="shop-checkout4.html"
														class="nav-link">Checkout - step 4</a></li>
												</ul>
											</div>
											<div class="col-md-6 col-lg-3">
												<h5>Contact</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="contact.html"
														class="nav-link">Contact</a></li>
													<li class="nav-item"><a href="contact2.html"
														class="nav-link">Contact - version 2</a></li>
													<li class="nav-item"><a href="contact3.html"
														class="nav-link">Contact - version 3</a></li>
												</ul>
												<h5>Pages</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="text.html"
														class="nav-link">Text page</a></li>
													<li class="nav-item"><a href="text-left.html"
														class="nav-link">Text page - left sidebar</a></li>
													<li class="nav-item"><a href="text-full.html"
														class="nav-link">Text page - full width</a></li>
													<li class="nav-item"><a href="faq.html"
														class="nav-link">FAQ</a></li>
													<li class="nav-item"><a href="404.html"
														class="nav-link">404 page</a></li>
												</ul>
												<h5>Blog</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a href="blog.html"
														class="nav-link">Blog listing big</a></li>
													<li class="nav-item"><a href="blog-medium.html"
														class="nav-link">Blog listing medium</a></li>
													<li class="nav-item"><a href="blog-small.html"
														class="nav-link">Blog listing small</a></li>
													<li class="nav-item"><a href="blog-post.html"
														class="nav-link">Blog Post</a></li>
												</ul>
											</div>
										</div>
									</li>
								</ul></li>
							<!-- ========== FULL WIDTH MEGAMENU END ==================-->
							<!-- ========== Contact dropdown ==================-->
							<li class="nav-item dropdown"><a href="javascript: void(0)"
								data-toggle="dropdown" class="dropdown-toggle">Contact <b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<li class="dropdown-item"><a href="contact.html"
										class="nav-link">Contact option 1</a></li>
									<li class="dropdown-item"><a href="contact2.html"
										class="nav-link">Contact option 2</a></li>
									<li class="dropdown-item"><a href="contact3.html"
										class="nav-link">Contact option 3</a></li>
								</ul></li>
							<!-- ========== Contact dropdown end ==================-->
						</ul>
					</div>
					<div id="search" class="collapse clearfix">
						<form role="search" class="navbar-form">
							<div class="input-group">
								<input type="text" placeholder="Search" class="form-control"><span
									class="input-group-btn">
									<button type="submit" class="btn btn-template-main">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</header>
		<!-- Navbar End-->

		<hr>
		  
		 
		<div class="container">
			<center>
				<form onsubmit="searchPlaces(); return false;">
					키워드 : <input type="text" value="서울숲" id="keyword" size="15">
					<button type="submit">검색하기</button>
				</form>
			</center>
		
			<hr>




		
							<!-- 
    <div id="menu_wrap" class="bg_white"  >
        <div class="option">
        </div>
      
        <hr>
       
    </div>
     -->



				
						<div class="container">



							
   <section class="bg-danger text-white">
    <div class="container ">
        <div class="row">
            <div class="col-md-12" style="background-color:#38A7BB;">
                <div class="card-body">
                        <div class="row pb-2">
            <div class="col-md-12">
                <h4>Search Hospital</h4>
            </div>
        </div>
    	<div class="row">
    		<div class="col-md-3">
               <div class="form-group">
                  <select id="region" onchange="categoryChange(this)" class="form-control">
                    <option value="">지역</option>
                                    <option value="1">서울</option>
                                    <option value="2">경기</option>
                                    <option value="3">인천</option>
                                    <option value="4">강원</option>
                                    <option value="5">대전</option>
                                    <option value="6">세종</option>
                                    <option value="7">충남</option>
                                    <option value="8">충북</option>
                                    <option value="9">부산</option>
                                    <option value="10">울산</option>
                                    <option value="11">경남</option>
                                    <option value="12">경북</option>
                                    <option value="13">대구</option>
                                    <option value="14">광주</option>
                                    <option value="15">전남</option>
                                    <option value="16">전북</option>
                                    <option value="17">제주</option>
                  </select>
               </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                  <select id="sml_region" class="form-control">
                    <option selected>시  / 군  / 구</option>
                    
                    
                  </select>
                </div>
            </div>
 
<input type="checkbox" > 응급진료

          
            <div class="col-md-3">
	           <button type="button" class="btn btn-primary btn-block" style="background-color:gray;">Search</button>
	        </div>
    	</div>
                    </div>
            </div>
        </div>
    </div>
</section>

<br>

<!-- 지도 화면 시작-->
			<div class="container">

				<section>
					<div class="map_s">


						<div class="map_wrap">
							<div id="map"
								style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
								
						</div>
		<!-- 지도 화면 끝 -->


 
							하이룽11234


							<div style="width: 100%; height: 20%;">
								<ul id="placesList"></ul>
							</div>
							<div id="pagination">
								<a href="#" class="on">1</a> <a href="#">2</a> <a href="#">3</a>
							</div>
							<br>


<script>
   function categoryChange(e) {
        var seoul = ["종로구", "중구", "용산구", "성동구", "광진구", "동대문구", "중랑구", "성북구", "강북구", "도봉구", "노원구", "은평구", "서대문구", "마포구", "양천구", "강서구", "구로구", "금천구", "영등포구", "동작구", "관악구", "서초구", "강남구", "송파구", "강동구"];
        var gyeonggi = ["수원시", "수원시 장안구", "수원시 권선구", "수원시 팔달구", "수원시 영통구", "성남시", "성남시 수정구", "성남시 중원구", "성남시 분당구", "의정부시", "안양시", "안양시 만안구", "안양시 동안구", "부천시", "광명시", "평택시", "동두천시", "안산시", "안산시 상록구", "안산시 단원구", "고양시", "고양시 덕양구", "고양시 일산동구", "고양시 일산서구", "과천시", "구리시", "남양주시", "오산시", "시흥시", "군포시", "의왕시", "하남시", "용인시", "용인시 처인구", "용인시 기흥구", "용인시 수지구", "파주시", "이천시", "안성시", "김포시", "화성시", "광주시", "양주시", "포천시", "여주시", "연천군", "가평군", "양평군"];
        var inchun = ["중구", "동구", "미추홀구", "연수구", "남동구", "부평구", "계양구", "서구", "강화군", "옹진군"];
        var kangwon = ["춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군"];
        var daejeon =["동구", "중구", "서구", "유성구", "대덕구"];
        var saejong = ["반곡동", "소담동", "보람동", "대평동", "가람동", "한솔동", "나성동", "새롬동", "다정동", "어진동", "종촌동", "고운동", "아름동", "도담동", "조치원읍", "연기면", "연동면", "부강면", "금남면", "장군면", "연서면", "전의면", "전동면", "소정면"]
        var chungnam =['천안시', '천안시 동남구', '천안시 서북구', '공주시', '보령시', '아산시', '서산시', '논산시', '계룡시', '당진시', '금산군', '부여군', '서천군', '청양군', '홍성군', '예산군', '태안군'];
        var chungbuk =['청주시', '청주시 상당구', '청주시 서원구', '청주시 흥덕구', '청주시 청원구', '충주시', '제천시', '보은군', '옥천군', '영동군', '증평군', '진천군', '괴산군', '음성군', '단양군'];
        var busan = ['중구', '서구', '동구', '영도구', '부산진구', '동래구', '남구', '북구', '해운대구', '사하구', '금정구', '강서구', '연제구', '수영구', '사상구', '기장군'];
        var ulsan = ['중구', '남구', '동구', '북구', '울주군'];
        var kyungnam=['창원시', '창원시 의창구', '창원시 성산구', '창원시 마산합포구', '창원시 마산회원구', '창원시 진해구', '진주시', '통영시', '사천시', '김해시', '밀양시', '거제시', '양산시', '의령군', '함안군', '창녕군', '고성군', '남해군', '하동군', '산청군', '함양군', '거창군', '합천군'];
        var kyungbuk =['포항시', '포항시 남구', '포항시 북구', '경주시', '김천시', '안동시', '구미시', '영주시', '영천시', '상주시', '문경시', '경산시', '군위군', '의성군', '청송군', '영양군', '영덕군', '청도군', '고령군', '성주군', '칠곡군', '예천군', '봉화군', '울진군', '울릉군'];
        var daegu = ['중구', '동구', '서구', '남구', '북구', '수성구', '달서구', '달성군'];
        var gwangju=['동구', '서구', '남구', '북구', '광산구'];
        var jeonnam=['목포시', '여수시', '순천시', '나주시', '광양시', '담양군', '곡성군', '구례군', '고흥군', '보성군', '화순군', '장흥군', '강진군', '해남군', '영암군', '무안군', '함평군', '영광군', '장성군', '완도군', '진도군', '신안군'];
        var jeonbuk =['전주시', '전주시 완산구', '전주시 덕진구', '군산시', '익산시', '정읍시', '남원시', '김제시', '완주군', '진안군', '무주군', '장수군', '임실군', '순창군', '고창군', '부안군'];
        var jeju=['제주시', '서귀포시'];
        //지역 마다 변경될 카테고리
        var target = document.getElementById("sml_region");
       //지역(큰범위) 카테고리의 option value 값을 비교
        if(e.value == "1") var d = seoul;
        else if(e.value == "2") var d = gyeonggi;
        else if(e.value == "3") var d = inchun;
        else if(e.value == "4") var d = kangwon;
        else if(e.value == "5") var d = daejeon;
        else if(e.value == "6") var d = saejong;
        else if(e.value == "7") var d = chungnam;
        else if(e.value == "8") var d = chungbuk;
        else if(e.value == "9") var d = busan;
        else if(e.value == "10") var d = ulsan;
        else if(e.value == "11") var d = kyungnam;
        else if(e.value == "12") var d = kyungbuk;
        else if(e.value == "13") var d = daegu;
        else if(e.value == "14") var d = gwangju;
        else if(e.value == "15") var d = jeonnam;
        else if(e.value == "16") var d = jeonbuk;
        else if(e.value == "17") var d = jeju;
       
        target.options.length = 0;
       //var d=seoul 일때 seoul 배열의 갯수만큼 변경되는 카테고리안에 <option value=seoul[x]>seoul[x]</option> 태그를 추가
       //여기서 x는 인덱스
        for (x in d) {
          var opt = document.createElement("option");
          opt.value = d[x];
          opt.innerHTML = d[x];
          
          //<option value=seoul[x]>seoul[x]</option> 태그를 추가
          target.appendChild(opt);
        } 
      }
   </script>



							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=59e90ffa4462049931ee4536f504c27b&libraries=services"></script>
							<script>
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

var marker = new daum.maps.Marker()

// 장소 검색 객체를 생성합니다
var ps = new daum.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new daum.maps.InfoWindow({zIndex:1});

//주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === daum.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === daum.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === daum.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new daum.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<5; i++ ) { //var i=0; i<places.length; i++가 원래 코드

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new daum.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            daum.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            daum.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

//검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '<form action="boardForm.do" method="post">' +  '<span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>' +
                    ' <input type="hidden" name="addr" value="'+places.address_name+'"   >' + 
                    ' <input type="hidden" name="addr2" value="'+places.place_name+'"    >' +
                    ' <input type="submit" value="전송">' + '</form>' ;
    } else {
        itemStr += '<form action="boardForm.do?addr='+places.address_name+'" method="post">' + '    <span>' +  places.address_name  + '</span>' +
       			 ' <input type="hidden" name="addr" value="'+places.address_name+'"   >' +
                 ' <input type="hidden" name="addr2" value="'+places.place_name+'"    >' +
        		' <input type="submit" value="전송">' + '</form>' ;
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new daum.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new daum.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new daum.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new daum.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
 
daum.maps.event.addListener(map, 'click', function(mouseEvent, result) {
    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
        if (status === daum.maps.services.Status.OK) {
        	var message = result[0].address.address_name
            var resultDiv = document.getElementById('clickLatlng'); 
            resultDiv.value = message;
            marker.setPosition(mouseEvent.latLng);
            marker.setMap(map);
        }   
    });
});

function searchDetailAddrFromCoords(coords, callback) {
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
    
}


</script>
						</div>
				</section>


			</div>
		</div>
		<br>


		<!-- FOOTER -->
		<footer class="main-footer">
			<div class="container">
				<div class="row"></div>
			</div>
			<div class="copyrights">
				<div class="container">
					<div class="row">
						<div class="col-lg-4 text-center-md">
							<p>&copy; 2019. Your company / name goes here</p>
						</div>
						<div class="col-lg-8 text-right text-center-md">
							<p>
								Template design by <a
									href="https://bootstrapious.com/p/big-bootstrap-tutorial">Bootstrapious
								</a>& <a href="https://fity.cz/ostrava">Fity</a>
							</p>
							<!-- Please do not remove the backlink to us unless you purchase the Attribution-free License at https://bootstrapious.com/donate. Thank you. -->
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<!-- Javascript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js"> </script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
	<script src="vendor/waypoints/lib/jquery.waypoints.min.js"> </script>
	<script src="vendor/jquery.counterup/jquery.counterup.min.js"> </script>
	<script src="vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
	<script src="js/jquery.parallax-1.1.3.js"></script>
	<script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
	<script src="vendor/jquery.scrollto/jquery.scrollTo.min.js"></script>
	<script src="js/front.js"></script>
</body>
</html>