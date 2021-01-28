<?php include('check_login.php') ?>
<?php include('connect.php');?>
<?php include('head.php');?>
<?php include('header_login.php');?>

<div class="contact-box">
  <div class="container" style="margin-top:50px; width:50%">
    <div class="row">
      <div class="heading-title text-center">
        <h2>Add New Recipe</h2>
      </div>
      <div class="col-lg-12" style="margin-bottom:50px;">
        <div class="progress">
          <div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width:25%; background-color:#D65106;">
            <span>25% Complete</span>
          </div>
        </div>
      </div>
      <div class="col-lg-12">
        <form id="signup" method="post" action="post_recipe_1_backend.php" enctype="multipart/form-data">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <select class="custom-select d-block form-control" id="guest" name="category" required data-error="Please Select Title">
                  <option disabled selected>Select Category</option>
                  <option value="Chicken Recipes">Chicken Recipes</option>
                  <option value="Mutton Recipes">Mutton Recipes</option>
                  <option value="Fish Recipes">Fish Recipes</option>
                  <option value="North Indian Recipes">North Indian Recipes</option>
                  <option value="South Indian Recipes">South Indian Recipes</option>
                  <option value="Middle Eastern Recipes">Middle Eastern Recipes</option>
                  <option value="Italian Recipes">Italian Recipes</option>
                  <option value="Chinese Recipes">Chinese Recipes</option>
                  <option value="Soft Drinks">Soft Drinks</option>
                  <option value="Tea / Coffee">Tea / Coffee</option>
                </select>
                <div class="help-block with-errors"></div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <h4>Title</h4>
                <input type="text" class="form-control" id="name" name="title" placeholder="Food Title..." required data-error="Please enter your food title">
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <h4>Image</h4>

                <input type="file" class="" id="fileToUpload" name="fileToUpload" placeholder="Upload Image" required data-error="Please upload your food image">
                <div class="help-block with-errors"></div>
              </div>
            </div>
            <?php $fname=$_SESSION['fname']; $lname=$_SESSION['lname']; ?>
            <input type="hidden" name="user_name" value="<?php echo $fname." ".$lname ?>">
            <input type="hidden" name="user_id" value="<?php echo $_SESSION['uid']?>">
            <input type="hidden" name="date" value="<?php echo "".date('y-m-d'); ?>">
            <input type="hidden" name="time" value="<?php echo "".date('h:m:s'); ?>">
              <div class="submit-button text-center">
                <button type="button" class="btn cancel" onclick="goBack()">Back</button>
                <button class="btn btn-common" type="submit" id="submit">Next</button>
                <div id="msgSubmit" class="h3 text-center hidden"></div>
                <div class="clearfix"></div>
              </div>
              <script>
              function goBack() {
                window.history.back();
              }
            </script>
            <script>
            $(document).ready(function(){
              $('#submit').click(function(){
                var image_name = $('#image').val();
                if(image_name == '')
                {
                  alert("Please Select Image");
                  return false;
                }
                else
                {
                  var extension = $('#image').val().split('.').pop().toLowerCase();
                  if(jQuery.inArray(extension, ['gif','png','jpg','jpeg']) == -1)
                  {
                    alert('Invalid Image File');
                    $('#image').val('');
                    return false;
                  }
                }
              });
            });
          </script>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<?php include('footer_login.php');?>
