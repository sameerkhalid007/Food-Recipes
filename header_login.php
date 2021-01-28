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
						<li class="nav-item"><a class="nav-link" href="welcome.php">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="recipe.php">Recipes</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Blog</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="blog.php">My Recipes</a>
								<a class="dropdown-item" href="post_recipe_1.php">Post Recipes</a>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="#footer">Contact</a></li>
						<li class="nav-item dropdown" style="border:1px solid #000000;border-radius:5px;margin-left:70px;">
							<a class="nav-link dropdown-toggle" id="dropdown-a" data-toggle="dropdown"><span><img src="./svg/user.svg" alt="">&nbsp;&nbsp;Hi,
 <?php    if(session_id() == ''){
      session_start();

   } 	echo $_SESSION['fname'];?></span></a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="logout.php">Sign Out</a>
							</div>
						</li>

								</ul>
							</div>
						</div>
					</nav>
				</header>
	<!-- End header -->
