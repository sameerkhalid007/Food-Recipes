<?php include('check_login.php') ?>
<?php include('connect.php');?>
<?php include('head.php');?>
<?php include('header_login.php');?>

<?php
  $r1_id=$_GET['rid'];

  $sqlrecipe1 = "SELECT * FROM recipes_1 where id=$r1_id";
  $qsqlrecipe1 = mysqli_query($conn,$sqlrecipe1);
  $rsrecipe1 = mysqli_fetch_array($qsqlrecipe1)


 ?>

<div class="contact-box">
  <div class="container" style="margin-top:50px; width:50%">
    <div class="row">
      <div class="heading-title text-center">
        <h2>Add New Recipe</h2>
      </div>
      <div class="col-lg-12" style="margin-bottom:50px;">
        <div class="progress">
          <div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:75%; background-color:#D65106;">
            <span>75% Complete</span>
          </div>
        </div>
      </div>
      <div class="col-lg-12">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <h4><strong>Category: </strong><span><?php echo $rsrecipe1['category']; ?></span></h4>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <h4><strong>Title: </strong><span><?php echo $rsrecipe1['title']; ?></span></h4>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <h4>Ingredients</h4>
                <div class="show-ingredients">
                  <?php

                  $sqling = "SELECT * FROM ingredients where r1_id=$r1_id";
                  $qsqling = mysqli_query($conn,$sqling);
                  while ($rsing = mysqli_fetch_array($qsqling)) { ?>
                    <p>- <?php echo $rsing['incredients']; ?></p>
                  <?php } ?>
                </div>

                <form class="" action="post_recipe_3_backend.php" method="post">
                  <input type="hidden" name="r1_id" value="<?php echo $r1_id; ?>">
                  <caption>* submit sub titles seperately</caption>
                  <input type="text" class="form-control" name="ingredients" placeholder="Ingredients..." required data-error="Please enter ingredients">
                  <button class="btn btn-common" type="submit" name="button" style="margin: 10px 0 0 0;" onclick="submitForm()">Submit</button>
                </form>
              </div>
            </div>
              <div class="submit-button text-center">
                <button type="button" class="btn cancel" onclick="goBack()">Back</button>
                <a href="<?php echo "post_recipe_4.php?rid=$r1_id"; ?>"><button class="btn btn-common" name="btnsubmit" type="button">Next</button></a>
                <div class="clearfix"></div>
              </div>
              <script>
              function goBack() {
                window.history.back();
              }
              function submitForm() {
                document.contact-form.submit();
                document.contact-form.reset();
              }
            </script>
            </div>
          </div>
      </div>
    </div>
  </div>
</div>

<?php include('footer_login.php');?>
