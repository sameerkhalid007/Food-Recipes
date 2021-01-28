<?php include('connect.php');?>
<?php include('head.php');?>
<?php include('header_logout.php');?>

  <div class="contact-box">
    <div class="container" style="margin-top:50px; width:50%">
      <div class="row">
        <div class="heading-title text-center">
          <h2>Sign In</h2>
        </div>
        <div class="col-lg-12">
          <form id="signin" method="post" action="signin_backend.php">
            <div class="row">
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
                <div class="submit-button text-center">
                  <button class="btn btn-common" name="btnsignin" type="submit">Sign In</button>
                  <a href="index.php"><button type="button" class="btn cancel">Cancel</button></a>
                  <div id="msgSubmit" class="h3 text-center hidden"></div>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
          </form>
          <div class="col-md-12" align="center">
            <p>New to Cook Food Recipes ? <a href="signup.php">Sign Up</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>

<?php include('footer.php');?>
