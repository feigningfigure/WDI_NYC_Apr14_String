require 'sinatra'
require 'sinatra/reloader'

get '/' do
	<<-HTML
		<h1>Ben Ticsay's About Me</h1>
		<p>Ben Ticsay is a student in General Assembly's Web Development Immersive, and is learning a lot!<p>
	HTML
end

get '/contact' do
	<<-HTML
		<h1>Ben Ticsay's Contact Information</h1>
		<p>Email:<a href="mailto:benticsay@gmail.com?Subject=Ahoy%20hoy!" target="_top">
benticsay@gmail.com</a><p></br>
		<p>Github: <a href="https://github.com/benticsay">benticsay</a><p></br>
		<p>Twitter: <a href="www.twitter.com/benticsay">@benticsay</a><p></br>
	HTML
end

get'/albums' do 
	<<-HTML
	<img src="http://latimesblogs.latimes.com/.a/6a00d8341c630a53ef01538ec2d542970b-pi" alt="Space is Only Noise" height="640" width="640"></br>
	<img src="http://cdn.rtny.uproxx.com/wp-content/uploads/2014/02/ill.jpeg" alt="Illmatic" height="640" width="640"></br>
	<img src="http://25.media.tumblr.com/93a1834ea5420c1daa0a3d2cc3d3a567/tumblr_mq76opc0691rjplc4o6_1280.jpg" alt="Thriller" height="640" width="640"></br>
	<p>AND MANY MANY MANY MORE</p>
	HTML
end

