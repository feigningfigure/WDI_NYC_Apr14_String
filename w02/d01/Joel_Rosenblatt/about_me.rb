require 'sinatra'
require 'sinatra/reloader'

get '/' do
  <<-HTML
    <h2>Joel Rosenblatt</h2>
    <h3>About me:</h3>
    <p>Musician and visual artist from the austral and hidden city of Montevideo, Uruguay.</p>
    <p>I earned an Associate Degree in Music Performance with an emphasis in Guitar, from Musicians Institute College of Contemporary Music in Los Angeles, CA in 2013.</p>
    <p>I've contributed to multiple projects, in the areas of music and film, that have led me into several corners of the world.</p>
    <p>My other interests include: technology, web-design, philosophy, physics and literature.</p>
  HTML
end

get '/contact' do
  <<-HTML
    <h2>Joel Rosenblatt</h2>
    <h3>Contact me:</h3>
    <ul>
    <ls style="display: block;"><a href="mailto:jojoel10@gmail.com">Email: jojoel10@gmail.com</a></ls>
    <ls><a href="tel:+13477062769">Tel: +1(347) 706-2768</a></ls>
    <ls style="display: block;"><a href="http://www.facebook.com/JoJoRosenblatt"><img src="http://www.theiphonemom.com/wp-content/uploads/2012/10/facebook-icon.png" height="30"></a></ls>
    </ul>
  HTML
end

get '/albums' do
  <<-HTML
    <h2>Joel Rosenblatt</h2>
    <h3>Top Three Albums:</h3>
    <ul>
    <ls><img src="http://www.israbox.com/uploads/posts/2010-08/1281627381_mozart-requiem-quatuor-debussy-2009.jpg" height="180"></ls>
    <ls><img src="http://www.anti.com/uploads/releases/0045778663262.png" height="180"></ls>
    <ls><img src="http://www.digitalartsonline.co.uk/cmsdata/features/3446673/CoverFinal-300dpi-688.jpg" height="180"></ls>
    </ul>
  HTML
end
