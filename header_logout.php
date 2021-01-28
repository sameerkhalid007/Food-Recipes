<?php include('head.php');?>
<?php include('connect.php');?>

<body>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="index.php">
					<img src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="recipes.php">Recipes</a></li>
						<li class="nav-item"><a class="nav-link" href="#footer">Contact</a></li>

						<li>
							<div class="subscribe_form">
								<a href="signin.php">
									<button type="submit" class="submit signin" onclick="openFormlogin()" style="border-radius:20px; width:100px; margin-left:10px;">Sign In</button>
								</a>
								<a href="signup.php">
									<button type="submit" class="submit signin" onclick="openFormlogin()" style="border-radius:20px; width:100px; margin-left:10px; background:none;color:#D65106; border:1px solid #D65106;">Register</button>
								</a>
							</div>
						</li>



								</ul>
							</div>
						</div>
					</nav>
				</header>
	<!-- End header -->
