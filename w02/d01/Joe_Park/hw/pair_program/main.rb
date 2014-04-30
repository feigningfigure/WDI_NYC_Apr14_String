require 'sinatra'
require 'sinatra/reloader'


get "/" do
	<<-HTML
	<head>
	<link rel="stylesheet" href="css/styles.css" />
	</head>
	<body>
	<h1>Do you like to code?</h1>
	<a class="aye" href="http://localhost:4567/yay">YES</a>
	<a class="nay" href="http://localhost:4567/boo">NO</a>
	</body>
	HTML
end

get "/yay" do
	<<-HTML
	<head>
	<link rel="stylesheet" href="css/styles.css" />
	</head>
	<body>
	<h1>Are you good at coding?</h1>
	<a href="http://localhost:4567/congrats" class="yay">YES</a>
	<a href="http://localhost:4567/boo" class="boo">NO</a>
	</body>
	HTML
end

get "/boo" do
	<<-HTML
	<head>
	<link rel="stylesheet" href="css/styles.css" />
	</head>

	<body>
	<h1>GO BACK AND MOTIVATE YOURSELF</h1>
	<a href="http://localhost:4567/" class="back">BACK</a>
	</body>
	HTML
end

get "/congrats" do
	<<-HTML
	<head>
	<link rel="stylesheet" href="css/styles.css" />
	</head>
	<body>
	<h1>You are well on your way to succeeding! GODSPEED!</h1>
	<a href="http://localhost:4567/" class="back">BACK</a>
	</body>
	HTML
end