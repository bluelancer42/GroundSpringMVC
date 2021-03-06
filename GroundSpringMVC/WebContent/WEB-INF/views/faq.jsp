<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>

<spring:url value="/resources/css/bootstrap-4.5.2/bootstrap.min.css"
	var="bootstrapCSS" />
<spring:url value="/resources/css/faq.css" var="faqCSS" />

<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${faqCSS}" rel="stylesheet" />
<spring:url value="/resources/css/main.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />

<spring:url value="/resources/js/jquery/jquery-3.5.1.min.js"
	var="jqueryJs" />
<spring:url value="/resources/js/bootstrap-4.5.2/bootstrap.min.js"
	var="bootstrapJs" />

<script src="${jqueryJs}"></script>
<script src="${bootstrapJs}"></script>

<title>Subscriptions FAQ</title>
</head>
<body>
	<div class="container-fluid pl-0 px-0">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
			<!-- Brand -->
			<a class="navbar-brand" href="index">
				<img alt="SMC Logo" src="resources/images/AFSC.png" width="50"
					height="60">
			</a>
			<!-- Toggler/collapsibe Button -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- Navbar links -->
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">Admin</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="statistics">Statistics</a>
							<a class="dropdown-item" href="adminuser">Search User</a>
							<a class="dropdown-item" href="adminproduct">Search Product</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="myaccount">My
							Account</a></li>
					<li class="nav-item"><a class="nav-link" href="products">Products</a></li>
					<li class="nav-item"><a class="nav-link" href="faq">FAQ</a></li>
					<li class="nav-item "><a class="btn btn-warning header-btn"
							href="subscribe">Subscribe</a></li>
				</ul>
				<h3 class="header-title">DoD Electro-Optical/Infrared (EO/IR)
					Weather Data as a Service (WxDaaS)</h3>
			</div>
		</nav>
		<div id="accordion">
			<h3 class="text-light">First Group</h3>
			<div class="card">
				<div class="card-header" id="headingOne">
					<h5 class="mb-0">
						<button class="btn btn-link" data-toggle="collapse"
							data-target="#collapseOne" aria-expanded="true"
							aria-controls="collapseOne">Collapsible Group Item #1</button>
					</h5>
				</div>

				<div id="collapseOne" class="collapse show"
					aria-labelledby="headingOne" data-parent="#accordion">
					<div class="card-body">Anim pariatur cliche reprehenderit,
						enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
						moon officia aute, non cupidatat skateboard dolor brunch. Food
						truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
						sunt aliqua put a bird on it squid single-origin coffee nulla
						assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer
						labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
						excepteur butcher vice lomo. Leggings occaecat craft beer
						farm-to-table, raw denim aesthetic synth nesciunt you probably
						haven't heard of them accusamus labore sustainable VHS.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingTwo">
					<h5 class="mb-0">
						<button class="btn btn-link collapsed" data-toggle="collapse"
							data-target="#collapseTwo" aria-expanded="false"
							aria-controls="collapseTwo">Collapsible Group Item #2</button>
					</h5>
				</div>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordion">
					<div class="card-body">Anim pariatur cliche reprehenderit,
						enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
						moon officia aute, non cupidatat skateboard dolor brunch. Food
						truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
						sunt aliqua put a bird on it squid single-origin coffee nulla
						assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer
						labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
						excepteur butcher vice lomo. Leggings occaecat craft beer
						farm-to-table, raw denim aesthetic synth nesciunt you probably
						haven't heard of them accusamus labore sustainable VHS.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingThree">
					<h5 class="mb-0">
						<button class="btn btn-link collapsed" data-toggle="collapse"
							data-target="#collapseThree" aria-expanded="false"
							aria-controls="collapseThree">Collapsible Group Item #3</button>
					</h5>
				</div>
				<div id="collapseThree" class="collapse"
					aria-labelledby="headingThree" data-parent="#accordion">
					<div class="card-body">Anim pariatur cliche reprehenderit,
						enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
						moon officia aute, non cupidatat skateboard dolor brunch. Food
						truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
						sunt aliqua put a bird on it squid single-origin coffee nulla
						assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer
						labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
						excepteur butcher vice lomo. Leggings occaecat craft beer
						farm-to-table, raw denim aesthetic synth nesciunt you probably
						haven't heard of them accusamus labore sustainable VHS.</div>
				</div>
			</div>
			<h3 class="text-light">Second Group</h3>
			<div id="accordion">
				<div class="card">
					<div class="card-header" id="headingFour">
						<h5 class="mb-0">
							<button class="btn btn-link collapsed" data-toggle="collapse"
								data-target="#collapseFour" aria-expanded="false"
								aria-controls="collapseFour">Collapsible Group Item #4</button>
						</h5>
					</div>

					<div id="collapseFour" class="collapse"
						aria-labelledby="headingFour" data-parent="#accordion">
						<div class="card-body">Anim pariatur cliche reprehenderit,
							enim eiusmod high life accusamus terry richardson ad squid. 3
							wolf moon officia aute, non cupidatat skateboard dolor brunch.
							Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
							tempor, sunt aliqua put a bird on it squid single-origin coffee
							nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica,
							craft beer labore wes anderson cred nesciunt sapiente ea
							proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
							craft beer farm-to-table, raw denim aesthetic synth nesciunt you
							probably haven't heard of them accusamus labore sustainable VHS.</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingFive">
						<h5 class="mb-0">
							<button class="btn btn-link collapsed" data-toggle="collapse"
								data-target="#collapseFive" aria-expanded="false"
								aria-controls="collapseFive">Collapsible Group Item #5</button>
						</h5>
					</div>
					<div id="collapseFive" class="collapse"
						aria-labelledby="headingFive" data-parent="#accordion">
						<div class="card-body">Anim pariatur cliche reprehenderit,
							enim eiusmod high life accusamus terry richardson ad squid. 3
							wolf moon officia aute, non cupidatat skateboard dolor brunch.
							Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
							tempor, sunt aliqua put a bird on it squid single-origin coffee
							nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica,
							craft beer labore wes anderson cred nesciunt sapiente ea
							proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
							craft beer farm-to-table, raw denim aesthetic synth nesciunt you
							probably haven't heard of them accusamus labore sustainable VHS.</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>