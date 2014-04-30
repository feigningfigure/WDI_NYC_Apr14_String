<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>CSS Positioning</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<nav class="clear">
		I'm a nav bar
	 	<ul class="right">
	 		I'm a ul.  I need to be floated right.  
	 		I have 3 lis.
	 		<li>facebook</li>
	 		<li>instagram</li>
	 		<li>twitter</li>
	 	</ul>
	</nav>
	<!-- static positioning -->
	<div class="container">

		I'm a static parent.

		<div class="box">
			I'm a box positioned static. This is the default.
		</div>

		<div class="box center">
			I'm a centered box.
		</div>

	</div><!-- container -->

	<!-- float positioning -->

	<div class="container">

		 I'm a static parent.

		<div class="box left">
			I'm box 1 floating left.
		</div>

		<div class="box left">
			I'm box 2 floating left.
		</div>

		<div class="box left">
			I'm box 3 floating left.
		</div>

		<div class="box right">
			I'm box 1 floating right.
		</div>

		<div class="box right">
			I'm box 2 floating right.
		</div>

		<!-- content placed here from the clear class -->

		<!-- I need a clear fix class if you do not want me to collapse when I have floating children inside me! -->

	</div><!-- container -->

</body>
</html>