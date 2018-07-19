<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Student Login</title>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
       <style type="text/css">
       .dropdown .dropdown-menu {
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
	max-height: 0;
	display: block;
	overflow: hidden;
	opacity: 0;
}

.dropdown:hover .dropdown-menu {
	max-height: 200px;
	opacity: 1;
}
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}
       
       </style>
    </head>
    <body>
    	<nav class="navbar navbar-inverse"
		style="background-color: white; border-color: white;border-bottom-color: darkcyan">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h>
					<a href="#"><img src="l2.jpg"
						style="height: 60px; margin-top: -9px"></a>
				</h>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">

					<li ><a
						style="color: black; font-family: sans-serif; font-weight: 600;"
						href="home.html">Home</a></li>
					<li><a
						style="color: black; font-family: sans-serif; font-weight: 600;"
						href="about.html">About</a></li>
					<li><a
						style="color: black; font-family: sans-serif; font-weight: 600;"
						href="achivements.html">Achievements</a></li>
					<li><a
						style="color: black; font-family: sans-serif; font-weight: 600;"
						href="parents.html">Gallery</a></li>
					<li><a
						style="color: black; font-family: sans-serif; font-weight: 600;"
						href="teachers.html">Teachers</a></li>
					<li><a
						style="color: black; font-family: sans-serif; font-weight: 600;"
						href="contact.html">Contact</a></li>
				</ul>


				<ul class="nav navbar-nav navbar-right">
					<li class="active" class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"
						style="color: white; font-family: sans-serif; font-weight: 600; background-color: darkcyan;">Login<span
							class="caret"></span></a>
						<ul class="dropdown-menu" style="background-color: darkcyan;">
							<li><a style="color: white; font-family: sans-serif; font-weight: 600;" href="studtab.jsp">Students Login</a></li>
							<li><a style="color: white; font-family: sans-serif; font-weight: 600;" href="teacherslogin.jsp">Teachers Login</a></li>
							<li><a style="color: white; font-family: sans-serif; font-weight: 600;" href="adminlogin.jsp">Admin Login</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
<div class="container">
<h2 style="font-family:  monospace;color:  cornflowerblue;">Student Login  Here</h2><br>
 <form method="post" action="loginstud.jsp">
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="uname" placeholder="User Name" style="width: 24%;" required="required">
    </div><br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="pass" placeholder="Password" style="width: 24%;" required="required">
    </div><br>
    <button type="submit" class="btn btn-success" style="width: 12%;">Login</button>
</form><br>
</div>
    </body>
</html>