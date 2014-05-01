# Sinatra + HTML
# Build an about me page with the following routes.
# Request: '/'
# Response: Display an about me page.
# Request: '/contact'
# Response: Display your contact information.
# Request: ''
# Request: '/albums'
# Response: Display a list of your top 3 favorite albums.



require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"
	#{display_top_menu()}
	#{$about_me_main_text}<br>
	#{display_footer()}
	"
end


get '/contact' do
	"
	#{display_top_menu()}
	#{$contact_text}<br>
	#{display_footer()}
	"
end


get '/albums' do
	"
	#{display_top_menu()}
	#{$album_text}<br>
	#{display_footer()}
	"
end


def display_top_menu
	return "<a href = '/'>about me</a> ----- <a href = '/contact'>contact</a> ----- <a href = 'albums'>albums</a>"
end

def display_footer()
	return "-----hello, I\'m a footer!-----"
end


$about_me_main_text = 
"
<h1>About Me</h1>
<p>I care deeply about intellectual property reform; open networks, platforms, and architectures; and both privacy and transparency. I enjoy exploring the dynamics of information ecosystems, facilitating collaboration, and breaking DRM systems. I am determined to create a world where my kids experience technology with the same sense of excitement, freedom, and possibility that I felt as a kid.</p>
<p>At this point in, I am embracing the need that creative approaches to the problems of technopolitics, beyond the traditional legal and non-profit advocacy toolkits. Digital advocacy and activism tools need to be built. The interwebs need to be measured and analized. Telco data-bases need to be web-scraped. Startups and advocacy projects need to be founded. I want to build these tools. It is time I learned to code. (Perhaps I should have done that before law school...)</p>
<p>A Few years ago I put my audio carreer on hold and enrolled in law school to save the Internet.I graduated from Brooklyn Law School in May of 2012 with a J.D. specializing in information law and intellectual property. At law school, I was a key player in the Brooklyn Law (startup) Incubator and Policy (BLIP) Clinic and a legal intern at the American Civil Liberties Union Project on Speech, Privacy, and Technology (ACLU SPT). After law school I managed the Roosevelt Institute Telecomunications Equality Project.</p>
<p>Before law school, I was a new media producer, audio director, and sound designer on many award winning human- and civil-rights advocacy projects, and worked in the advertising, film, and edTech industries. I also spent a few spent summers and countless weekends living out of a van, traveling, and playing indie-rock music.</p>
"


$contact_text= 
"
<h1>Contact Information</h1>
<p>john@johnrandall.com
<p>1.973.454.1015 
<p>@johntrandall
<p>
<p>Sometimes you can find a blog at johnrandall.com... (And sometimes not.)
"

$album_text= 
"
<h1>Top albums for coding:</h1>
<p>Best adrenaline music: <a href='http://en.wikipedia.org/wiki/Elf_Titled'>The Advantage - Elf Titled</a></p>
<p>On heavy rotation this week <a href = 'http://alexandrastreliski.bandcamp.com/album/pianoscope'> Alexandra Streliski - pianoscope</a></p>
<p>John\'s former life: <a href='http://ww.redfizz.com/rf/band.aspx?&bandid=433295'>RedRover</a></p>
"






