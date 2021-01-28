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

      </div>
      <div class="col-lg-12" style="margin-bottom:50px;">
        <div class="progress">
          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%; background-color: #D65106;">
            <span>100% Complete</span>
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
                <h4>Procedure</h4>
                <?php

                $sqlproc = "SELECT * FROM procedures where r1_id=$r1_id";
                $qsqlproc = mysqli_query($conn,$sqlproc);
                while ($rsproc = mysqli_fetch_array($qsqlproc)) { ?>
                  <p><?php echo $rsproc['steps']; ?></p>
                <?php } ?>
              </div>
                <form class="" action="post_recipe_4_backend.php" method="post">
                  <caption>* submit sub titles seperately</caption>
                  <textarea class="form-control" name="steps" rows="8" cols="80" placeholder="Procedure in Steps..." required data-error="Please enter procedure in steps"></textarea>
                  <input type="hidden" name="r1_id" value="<?php echo $rsrecipe1['id'] ?>">
                  <input type="hidden" name="date" value="<?php echo "".date('y-m-d'); ?>">
                  <input type="hidden" name="time" value="<?php echo "".date('h:m:s'); ?>">
                  <button class="btn btn-common" type="submit" name="button" style="margin: 10px 0 0 0;">Add Step</button>
                </form>
              </div>
            </div>
              <div class="submit-button text-center">
                <button type="button" class="btn cancel" onclick="goBack()">Back</button>
                <a href="blog.php"><button class="btn btn-common" name="btnsubmit" type="submit">Submit</button></a>
              </div>
              <script>
              function goBack() {
                window.history.back();
              }
            </script>
            </div>
          </div>
      </div>
    </div>
  </div>
</div>

<?php include('footer_login.php');?>
