require 'sinatra'
require 'sinatra/reloader'



get '/' do
<<-HTML
<!DOCTYPE html>
<head>
	<title>Jonathan Milgrom</title>
<style>
body {
	text-align: center;
	background: url("http://3.bp.blogspot.com/_CwSYMd9KuCE/S-TDSZPL01I/AAAAAAAAH_k/tnSsOHfw5dA/s1600/DSC_6279.JPG");
	background-position: center;
}
header {
	background: rgba(0,0,0,0,0);
	color: white;
	font-size: 70px;
	padding-bottom: 5px;
}
img {
	border: 30px solid white;
	margin: 0px 0px 0px -20px;
	border-radius: 40px;
	}
article {
	font-family: helvetica;
}
ul {
	color: white;
	padding: 2px;
	font-size: 30px;
	;
 }
li {
	padding: 5px;
}
@media (max-width: 550px) {
h1 {
	font-size: 40px;}
	}
h2 {
	margin: -3px 0px -3px 0px;
	font-size: 15px;
}
</style>
</head>
<body>
	<header>
		<h1>Hell
		<a href="http://imgur.com/c06Jf6B"><img src="http://i.imgur.com/c06Jf6B.jpg?1" title="Hosted by imgur.com" /></a>.</h1>
	</header>
	<article>
		<ul>
			<li>I LOVE basketball, whether watching or playing</li>
			<li>Some of both my favorite and least favorite movies star Jim Carrey</li>
			<li>I don't always take coding classes, but when I do, I prefer GA</li>
		</ul>
		<h2>jbmilgrom@gmail.com</h2>
		<h2>(818) 439-8409</h2>
		<h2>60 W. 23rd St. #434 New York, NY 10010</h2>
	</article>
</body>
HTML
end

get '/:contact' do
	if params[:contact] == "contact"
<<-HTML
	<!DOCTYPE html>
	<style>
		h2 {
	background: black;
	color: white;
	font-size: 50px;
	padding: 10px;
}
	</style>
	<body>
		<h2>jbmilgrom@gmail.com</h2>
		<h2>(818) 439-8409</h2>
		<h2>60 W. 23rd St. #434 New York, NY 10010</h2>
	</body>

HTML

	elsif params[:contact] == "albums" 
<<-HTML
	<style>
		ol {
	background: black;
	color: white;
	font-size: 40px;
	margin: 0px 0px 0px 30px;

}
	</style>
	<body>
	<ol>
		<li>In Rainbows - Radio Head</li>
		<li>Kind of Blue - Miles Davis</li>
	</ol>
	</body>
HTML
	else
		"ERROR"
	end
end
