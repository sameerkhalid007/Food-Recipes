<?php include('connect.php');?>
<?php include('head.php');?>
<?php include('header_logout.php');?>

<div class="contact-box">
  <div class="container" style="margin-top:50px; width:50%">
    <div class="row"> 
      <div class="heading-title text-center">
        <h2>Sign Up</h2>
      </div>
      <div class="col-lg-12">
        <form id="signup" method="post" action="signup_backend.php">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <select class="custom-select d-block form-control" id="guest" name="title" required data-error="Please Select Title">
                  <option disabled selected>Select Title</option>
                  <option value="Mr">Mr.</option>
                  <option value="Ms">Ms.</option>
                  <option value="Mrs">Mrs.</option>
                </select>
                <div class="help-block with-errors"></div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <input type="text" class="form-control" id="name" name="fname" placeholder="First Name..." required data-error="Please enter your name">
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" id="name" name="lname" placeholder="Last Name..." required data-error="Please enter your name">
                <div class="help-block with-errors"></div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <input type="tel" placeholder="Phone Number..." id="phone" class="form-control" name="phone" required data-error="Please enter your number">
                <div class="help-block with-errors"></div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <input type="email" placeholder="Email..." id="email" class="form-control" name="email" required data-error="Please enter your email">
                <div class="help-block with-errors"></div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group">
                <input type="password" placeholder="Password..." id="password" class="form-control" name="password" required data-error="Please enter password">
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group" style="display:none;">
                <input type="text" class="form-control" name="datetime" value="<?php echo "" . date("Y-m-d h:i:s"); ?>">
                <div class="help-block with-errors"></div>
              </div>
              <div class="submit-button text-center">
                <button class="btn btn-common" name="btnsignup" type="submit">Sign Up</button>
                <a href="index.php"><button type="button" class="btn cancel">Cancel</button></a>
                <div id="msgSubmit" class="h3 text-center hidden"></div>
                <div class="clearfix"></div>
              </div>
            </div>
          </div>
        </form>
        <div class="col-md-12" align="center">
          <p>Already have an account with Cook Food Recipes ? <a href="signin.php">Sign In</a></p>
        </div>
      </div>
    </div>
  </div>
</div>

<?php include('footer.php');?>
