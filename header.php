<?php include('head.php');?>
<?php include('connect.php');?>
<body>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="index.html">
					<img src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="recipes.php">Recipes</a></li>
						<li class="nav-item"><a class="nav-link" href="contact.php">Contact</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Blog</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="blog.php">My blog</a>
							</div>
						</li>
						<li>
							<div class="subscribe_form">
								<a href="signin.php"><button type="submit" class="submit signin" onclick="openFormlogin()" style="border-radius:20px; width:100px; margin-left:10px;">Sign In</button></a>
							</div>
						</li>

						<li class="user-profile header-notification" style="margin:15px 0 0 15px;">
							<div class="dropdown-primary dropdown">
								<div class="dropdown-toggle" data-toggle="dropdown">

										<span><strong>Hi, <?php echo htmlspecialchars($_SESSION["username"]); ?></strong></span>
										<i class="feather icon-chevron-down"></i>
									</div>
									<ul class="show-notification profile-notification dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
										<li>
											<a href="logout.php">
												<i class="feather icon-log-out"></i> Logout</a>
											</li>
										</ul>
										</div>
									</li>

								</ul>
							</div>
						</div>
					</nav>
				</header>
	<!-- End header -->
