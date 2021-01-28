<?php include('check_login.php') ?>
<?php include('connect.php');?>
<?php include('head.php');?>
<?php include('header_login.php');?>

<?php

  $sqlrecipe1 = "SELECT * FROM recipes_1 where user_id='$_GET[uid]' AND category='$_GET[category]' AND title='$_GET[title]'";
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
          <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%; background-color:#D65106;">
            <span>50% Complete</span>
          </div>
        </div>
      </div>
      <div class="col-lg-12">
        <form id="signup" method="post" action="post_recipe_2_backend.php">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <h4><strong>Category: </strong><span><?php echo $rsrecipe1['category']; ?> </span></h4>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <h4><strong>Title: </strong><span><?php echo $rsrecipe1['title']; ?></span></h4>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <h4><strong>Image: </strong></h4>
                <img src="uploads/<?php echo $rsrecipe1['image']; ?>" alt="Food Picture" style="width:250px;height:250px;">
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <input type="hidden" name="rid" value="<?php echo $rsrecipe1['id']; ?>">
                <h4>Description</h4>
                <caption>* Not more than 50 words</caption>
                <textarea class="form-control" name="description" rows="4" cols="80" maxlength="300" placeholder="Type Food Description..." required data-error="Please enter your food description"></textarea>

                <div class="help-block with-errors"></div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <h4>Cooking Time</h4>
                <caption>* In minutes</caption>
                <input type="number" placeholder="Cooking Time..." id="cook_time" class="form-control" name="cook_time" min="1" required data-error="Please enter cooking time">
                <div class="help-block with-errors"></div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <h4>Preparation Time</h4>
                <caption>* In minutes</caption>
                <input type="number" placeholder="Preparation Time..." id="prep_time" class="form-control" name="prep_time" min="1" required data-error="Please enter preparation time">
                <div class="help-block with-errors"></div>
              </div>
            </div>
            <input type="hidden" name="date" value="<?php echo "".date('y-m-d'); ?>">
            <input type="hidden" name="time" value="<?php echo "".date('h:m:s'); ?>">
              <div class="submit-button text-center">
                <button type="button" class="btn cancel" onclick="goBack()">Back</button>
                <button class="btn btn-common" name="btnsubmit" type="submit">Next</button>
                <div id="msgSubmit" class="h3 text-center hidden"></div>
                <div class="clearfix"></div>
              </div>
              <script>
              function goBack() {
                window.history.back();
              }
            </script>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<?php include('footer_login.php');?>
