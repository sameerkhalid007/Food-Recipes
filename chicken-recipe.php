<?php include('check_login.php') ?>
<?php include('head.php');?>
<?php include('header_login.php');?>
<?php include('connect.php');?>

	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Chicken Recipes</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

	<!-- Start blog -->
	<div class="blog-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Chicken Recipes</h2>
						<p>Find recipes for fried chicken, chicken breast, grilled chicken, chicken wings and more!</p>
					</div>
				</div>
			</div>
			<div class="row">

				<?php

					$sqlr1 = "SELECT * FROM recipes_1,recipes_2 where category='Chicken Recipes' and recipes_1.id=r1_id";
				  $qsqlr1 = mysqli_query($conn,$sqlr1);
					while ($rsr1 = mysqli_fetch_array($qsqlr1)) {

						?>

				<div class="col-lg-4 col-md-6 col-12">
					<div class="blog-box-inner">
						<div class="blog-img-box">
							<img class="img-fluid" src="images/blog-img-01.jpg" alt="">
						</div>
						<div class="blog-detail">
							<h4><?php echo $rsr1['title'] ?></h4>
							<ul>
								<li><span>Post by <?php echo $rsr1['user_name']; ?></span></li>
								<li>|</li>
								<li><span><?php echo date("d-M-Y",strtotime($rsr1['date'])); ?></span></li>
							</ul>
							<p><?php echo $rsr1['description'] ?></p>
              <p>
                <strong>Cook Time :</strong> <?php echo $rsr1['cook_time']; ?>&nbsp;m <br/>
                <strong>Prep Time :</strong> <?php echo $rsr1['prep_time']; ?>&nbsp;m
              </p>
							<a href="recipe-detail.php?item=<?php echo $rsr1['r1_id'];  ?>"><button  class="btn btn-lg btn-circle btn-outline-new-white" name="submitbtn">READ MORE</button></a>
						</div>
					</div>
				</div>
			<?php  }?>

			</div>
		</div>
	</div>
	<!-- End blog -->
	<?php include('footer_login.php');?>
