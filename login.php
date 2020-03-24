<?php require_once('Connections/koneksi.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}
?>
<?php
// *** Validate request to login to this site.
if (!isset($_SESSION)) {
  session_start();
}

$loginFormAction = $_SERVER['PHP_SELF'];
if (isset($_GET['accesscheck'])) {
  $_SESSION['PrevUrl'] = $_GET['accesscheck'];
}

if (isset($_POST['username'])) {
  $loginUsername=$_POST['username'];
  $password=$_POST['password'];
  $MM_fldUserAuthorization = "level";
  $MM_redirectLoginSuccess = "index.php";
  $MM_redirectLoginFailed = "login.php";
  $MM_redirecttoReferrer = false;
  mysql_select_db($database_koneksi, $koneksi);
  	
  $LoginRS__query=sprintf("SELECT user_name, password, level,poto FROM user_login WHERE user_name=%s AND password=%s",
  GetSQLValueString($loginUsername, "text"), GetSQLValueString($password, "int")); 
   
  $LoginRS = mysql_query($LoginRS__query, $koneksi) or die(mysql_error());
  $loginFoundUser = mysql_num_rows($LoginRS);
  if ($loginFoundUser) {
    
    $loginStrGroup  = mysql_result($LoginRS,0,'level');
    
	if (PHP_VERSION >= 5.1) {session_regenerate_id(true);} else {session_regenerate_id();}
    //declare two session variables and assign them
    $_SESSION['MM_Username'] = $loginUsername;
    $_SESSION['MM_UserGroup'] = $loginStrGroup;	      
    $_SESSION['user_posting'] = $loginStrGroup ;
    if (isset($_SESSION['PrevUrl']) && false) {
      $MM_redirectLoginSuccess = $_SESSION['PrevUrl'];	
    }
    header("Location: " . $MM_redirectLoginSuccess );
  }
  else {
    header("Location: ". $MM_redirectLoginFailed );
  }
}
?>
<!doctype html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  
  <!-- DNS prefetch -->
  <link rel=dns-prefetch href="//fonts.googleapis.com">

  <!-- Use the .htaccess and remove these lines to avoid edge case issues.
       More info: h5bp.com/b/378 -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<link href="css/login/stylelog.css" rel="stylesheet">
	<link href="css/login/style.css" rel="stylesheet">
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<script src="js/login/javascript.js"></script>
	<script src="js/login/jquery.js"></script>
	<script src="js/login/TweenMax.js"></script>
  <title>Yasunaga AirPump</title>
   <link rel="icon" type="image/jpg" href="img/ico.png" />
  <!-- end Fonts-->

  <!-- All JavaScript at the bottom, except for Modernizr / Respond.
       Modernizr enables HTML5 elements & feature detects; Respond is a polyfill for min/max-width CSS3 Media Queries
       For optimal performance, use a custom Modernizr build: www.modernizr.com/download/ -->
</head>

	<div id="login-button">
		<img src="img/loginicon.png"></img>
	</div>
  <!-- Begin of #container -->
  <div id="container">
  	
  	<!-- Begin of LoginBox-section -->
    	<div align="center">
				<img src="img/smrt.png">
			</div>
			<form id="login-form"  action="<?php echo $loginFormAction; ?>" method="POST">
				<input type="text" name="username" placeholder="EMAIL">
				<input type="password" name="password"  value="Password" placeholder="Password">
				<input type="submit" name="login" value="Login" />
				<div>
				  <span class="close-btn">
					<a href="index.php"><img src="img/close.png"></img></a>
				  </span>
				</div>
				 <!--<div id="remember-container">
				  <input type="checkbox" id="checkbox-2-1" class="checkbox" checked="checked"/>
				  <span id="remember">Remember me</span>
				  <span id="forgotten">Forgotten password</span>
				</div> -->
			  </form>
  </div> <!--! end of #container -->


  <!-- JavaScript at the bottom for fast page loading -->

  <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
  <script src="js/libs/jquery-1.6.2.min.js"></script>


  <!-- scripts concatenated and minified via ant build script-->
  <script defer src="js/plugins.js"></script> <!-- lightweight wrapper for consolelog, optional -->
  <script defer src="js/mylibs/jquery.notifications.js"></script> <!-- Notifications  -->
  <script defer src="js/mylibs/jquery.uniform.min.js"></script> <!-- Uniform (Look & Feel from forms) -->
  <script defer src="js/mylibs/jquery.validate.min.js"></script> <!-- Validation from forms -->
  <script defer src="js/mylibs/jquery.tipsy.js"></script> <!-- Tooltips -->
  <script defer src="js/common.js"></script> <!-- Generic functions -->
  <script defer src="js/script.js"></script> <!-- Generic scripts -->
  
   <script type="text/javascript">
	$().ready(function() {
		
		/*
		 * Validate the form when it is submitted
		 */
		var validatelogin = $("#login-form").validate({
			invalidHandler: function(form, validator) {
      			var errors = validator.numberOfInvalids();
      			if (errors) {
        			var message = errors == 1
			          ? 'You missed 1 field. It has been highlighted.'
			          : 'You missed ' + errors + ' fields. They have been highlighted.';
        			$('#login-form').removeAlertBoxes();
        			$('#login-form').alertBox(message, {type: 'error'});
        			
      			} else {
       			 	$('#login-form').removeAlertBoxes();
      			}
    		}
		});
		
		jQuery("#reset-login").click(function() {
			validatelogin.resetForm();
		});
				
	});
	$('#login-button').click(function(){
	  $('#login-button').fadeOut("slow",function(){
		$("#container").fadeIn();
		TweenMax.from("#container", .4, { scale: 0, ease:Sine.easeInOut});
		TweenMax.to("#container", .4, { scale: 1, ease:Sine.easeInOut});
	  });
	});

	$(".close-btn").click(function(){
	  TweenMax.from("#container", .4, { scale: 1, ease:Sine.easeInOut});
	  TweenMax.to("#container", .4, { left:"0px", scale: 0, ease:Sine.easeInOut});
	  $("#container, #forgotten-container").fadeOut(800, function(){
		$("#login-button").fadeIn(800);
	  });
	});

	/* Forgotten Password */
	$('#forgotten').click(function(){
	  $("#container").fadeOut(function(){
		$("#forgotten-container").fadeIn();
	  });
	});
  </script>
  <!-- end scripts-->

  <!-- Prompt IE 6 users to install Chrome Frame. Remove this if you want to support IE 6.
       chromium.org/developers/how-tos/chrome-frame-getting-started -->
  <!--[if lt IE 7 ]>
    <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
    <script>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
  <![endif]-->
  
</body>
</html>
