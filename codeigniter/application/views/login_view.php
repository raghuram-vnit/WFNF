  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">
   <head>
     <title>Work For Natural Farming</title>
     <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      <!-- Bootstrap -->
      <link href="http://localhost/codeigniter/css/bootstrap.min.css" rel="stylesheet">
      <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
      <link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
      <link href="http://localhost/codeigniter/css/style.min.css" rel="stylesheet">
      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="http://localhost/codeigniter/js/bootstrap.min.js"></script>

      
  <div class="container-fluid">
    <div id="page-login" class="row">
      <div class="col-xs-12 col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
        <div class="text-right">
          <a href="<?php echo site_url('farmerRegistration/index') ?>" class="txt-default">Need an account?</a>
        </div>
        <div class="box">
          <div class="box-content">
            <div class="text-center">
              <h3 class="page-header">Login Page</h3>
            </div>
            <?php echo validation_errors(); ?>
            <?php echo form_open('verifylogin'); ?>
            <div class="form-group">
              <label class="control-label">Username</label>
              <input type="text" class="form-control" name="username" id="username"/>
            </div>
            <div class="form-group">
              <label class="control-label">Password</label>
              <input type="password" class="form-control" name="password" id="password"/>
            </div>
            <div class="text-center">
              <input type="submit" value="Login"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
     </form>
   </body>
  </html>