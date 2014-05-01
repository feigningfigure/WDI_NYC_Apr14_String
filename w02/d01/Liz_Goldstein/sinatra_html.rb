require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "<h1>All About Liz Cira Goldstein</h1>
  <br>
  <p>Hey! My name is Liz, and I like avocados, cats, and loud music!</p>
  <p>Also, I seem to like Oxford commas.</p>
  <h2>I kind of like HTML, but we've had some mutually traumatic experiences.</h2>
  <p>I do not like cilantro at all.</p>"
end

get '/contact' do
"<h2> Contact Info</h2>
<h3>Elizabeth C. Goldstein</h2>
<p>205 W. 89th St. #1H</p>
<p>New York, NY 10024</p>

<p>Send me postcards!</p>"
end

get '/albums' do
"
<p>So far my General Assembly experience has been challenging and intense.
But this is really really really hard. Still, the ability to exercise clear judgement in triage situations is what seperates leaders from commanders.
Someone told me once[*], 'Anyone can give commands, but it takes love to lead.'</p>
<p>I <b>LOVE</b> a lot of albums, which is why choosing only three of them is a painful exercise best gotten over with ASAP, and then repressed.</p>

<p>So without further introduction...</p>

<h2>The Top 3 Greatest Albums of All Time</h2>

<ol>
<li>Firewater - <em>Get Off The Cross, We Need Wood For the Fire</em></li>
<li>David Byrne - <em>Feelings</em></li>
<li>Gogol Bordello - <em>Voi-La Intruder!</em></li>
</ol>
<p>Of course you can disagree with me, to which I'd say, 'How does it feel to wake up, every single morning, and be so wrong.'</p>

<p>[*] OK, I read this online when I was stalking a dmoz meta editor to try and get a link; he was a taoist, and that quote was in his profile.</p>
<p>I did not get that link.</p>"

end
