<?php include('check_login.php') ?>
<?php include('head.php');?>
<?php include('header_login.php');?>
<?php include('connect.php');?>

<?php
 	$id=$_GET['item'];

	$sqlrecipe1 = "SELECT * FROM recipes_1 where id=$id";
  $qsqlrecipe1 = mysqli_query($conn,$sqlrecipe1);
  $rsrecipe1 = mysqli_fetch_array($qsqlrecipe1);

	$sqlrecipe2 = "SELECT * FROM recipes_2 where r1_id=$id";
  $qsqlrecipe2 = mysqli_query($conn,$sqlrecipe2);
  $rsrecipe2 = mysqli_fetch_array($qsqlrecipe2);

	$sqlrecipe3 = "SELECT * FROM ingredients where r1_id=$id";
  $qsqlrecipe3 = mysqli_query($conn,$sqlrecipe3);
  $rsrecipe3 = mysqli_fetch_array($qsqlrecipe3);

	$sqlrecipe4 = "SELECT * FROM procedures where r1_id=$id";
  $qsqlrecipe4 = mysqli_query($conn,$sqlrecipe4);
  $rsrecipe4 = mysqli_fetch_array($qsqlrecipe4);

 ?>


	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1><?php echo $rsrecipe1['title']; ?></h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

	<!-- Start blog details -->
	<div class="blog-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2><?php echo $rsrecipe1['title']; ?></h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-8 col-lg-8 col-12">
					<div class="blog-inner-details-page">
						<div class="blog-inner-box">
							<div class="side-blog-img">
								<img class="img-fluid" src="uploads/<?php echo $rsrecipe1['image']; ?>" alt="" style="object-fit:cover;">
								<div class="date-blog-up">
									<?php echo date("d-M-Y",strtotime($rsrecipe1['date']));?>
								</div>
							</div>
							<div class="inner-blog-detail details-page">
								<h3><?php echo $rsrecipe1['title']; ?></h3>
								<ul>
									<li><i class="zmdi zmdi-account"></i>Posted By : <span><?php echo $rsrecipe1['user_name']; ?></span></li>
									<li>|</li>
									<li><i class="zmdi zmdi-date"></i>Date : <span><?php echo date("d-M-Y",strtotime($rsrecipe4['date'])); ?></span></li>
									<li>|</li>
									<li><i class="zmdi zmdi-time"></i>Time : <span><?php echo date("H:i A",strtotime($rsrecipe4['time'])); ?></span></li>
								</ul>
								<div class="description">
									<p><?php echo $rsrecipe2['description']; ?></p>
								</div>
								<blockquote>
									<p>
										<h3>Ingredients of <?php echo $rsrecipe1['title']; ?></h3>
										<div class="left" style="float:left;">
											<?php
											$sql ="SELECT * FROM ingredients where r1_id=$id";
											$qsql = mysqli_query($conn,$sql);
											while($rs = mysqli_fetch_array($qsql))
											{
												echo "$rs[incredients]<br/>";
											}
											 ?>
										</div>
									</p>
								</blockquote>
								<div class="steps" style="float:left;margin-top:30px;">
									<h3>Procedure</h3>
									<p>
										<?php
										$sql ="SELECT * FROM procedures where r1_id=$id";
										$qsql = mysqli_query($conn,$sql);
										while($rs = mysqli_fetch_array($qsql))
										{
											echo "$rs[steps]<br/><br/>";
										}
										 ?>
									</p>
								</div>
							</div>
						</div>
						<div class="blog-comment-box">
							<h3>Comments</h3>
							<?php
							$sql ="SELECT * FROM comments where r1_id=$id";
							$qsql = mysqli_query($conn,$sql);
							while($rs = mysqli_fetch_array($qsql))
							{
							 ?>
							<div class="comment-item">
								<div class="comment-item-left">
									<img src="images/avt-img.jpg" alt="">
								</div>
								<div class="comment-item-right">
									<div class="pull-left">
										<p><?php echo $rs['name'] ?></p>
									</div>
									<div class="pull-right">
										Date : <span><?php echo date("d-M-Y",strtotime($rs['date'])); ?>&nbsp;&nbsp;&nbsp;</span>Time : <span><?php echo date("H:i A",strtotime($rs['time'])); ?></span>
									</div>
									<div class="des-l">
										<p><?php echo $rs['comment'] ?></p>
									</div>
								</div>
							</div>
						<?php } ?>
					</div>

						<?php
						 ?>

						<div class="comment-respond-box">
							<h3>Leave your comment </h3>
							<div class="comment-respond-form">
								<form id="commentrespondform" class="comment-form-respond row" action="comments_backend_login.php" method="post">
									<div class="col-lg-6 col-md-6 col-sm-6">
										<div class="form-group">
											<input id="name_com" class="form-control" name="name" placeholder="Name" type="text">
										</div>
										<div class="form-group">
											<input id="email_com" class="form-control" name="email" placeholder="Your Email" type="email">
											<input type="hidden" name="rid" value="<?php echo $rsrecipe1['id']; ?>">
											<input type="hidden" name="date" value="<?php echo date('Y-m-d'); ?>">
											<input type="hidden" name="time" value="<?php echo date('h:m:s'); ?>">
											<input type="hidden" name="pid" value="<?php echo $id; ?>">
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6">
										<div class="form-group">
											<textarea class="form-control" id="textarea_com" name="message" placeholder="Your Message" rows="2"></textarea>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12">
										<button class="btn btn-submit" name="btncmt" type="submit">Submit comment</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-4 col-lg-4 col-md-6 col-sm-8 col-12 blog-sidebar">
					<div class="right-side-blog">
						<h3>Categories</h3>
						<div class="blog-categories">
							<ul>
								<li><a href="chicken-recipe.php"><span>Chicken</span></a></li>
								<li><a href="mutton-recipe.php"><span>Mutton</span></a></li>
								<li><a href="fish-recipe.php"><span>Fish</span></a></li>
								<li><a href="north-indian-recipe.php"><span>North Indian</span></a></li>
								<li><a href="south-indian-recipe.php"><span>South Indian</span></a></li>
								<li><a href="middle-eastern-recipe.php"><span>Middle Eastern</span></a></li>
								<li><a href="italian-recipe.php"><span>Italian</span></a></li>
								<li><a href="chinese-recipe.php"><span>Chinese</span></a></li>
								<li><a href="softdrinks.php"><span>Soft Drinks</span></a></li>
								<li><a href="teacoffee.php"><span>Tea / Coffee</span></a></li>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- End details -->
	<?php include('footer_login.php');?>
