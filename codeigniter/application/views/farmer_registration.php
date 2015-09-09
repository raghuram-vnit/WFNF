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
					<a href="page_login.html" class="txt-default">Already have an account?</a>
				</div>
				<div class="box">
					<div class="box-content">
						<div class="text-center">
							<h3 class="page-header">WFNF Farmer Register Page</h3>
						</div>
            			<form action="http://localhost/codeigniter/index.php/farmerRegistration/registration/" name="farmerRegistrationForm" id="farmerRegistrationForm" method="post" >  
						<div class="form-group">
							<label class="control-label">Username</label>
							<input type="text" class="form-control" name="userName" />
						</div>
						<div class="form-group">
							<label class="control-label">First Name</label>
							<input type="text" class="form-control" name="firstName" />
						</div>
						<div class="form-group">
							<label class="control-label">Last Name</label>
							<input type="text" class="form-control" name="lastName" />
						</div>
						<div class="form-group">
							<label class="control-label">Phone Number</label>
							<input type="text" class="form-control" name="phoneNumber" />
						</div>
						<div class="form-group">
							<label class="control-label">E-mail</label>
							<input type="text" class="form-control" name="email" />
						</div>
						<div class="form-group">
							<label class="control-label">Password</label>
							<input type="password" class="form-control" name="password" />
						</div>
						<div class="form-group">
							<label class="control-label">Pincode</label>
							<input type="text" class="form-control" name="pincode" />
						</div>
						<div class="text-center">
							<input type="submit" class="btn btn-primary" value="Register"/>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
