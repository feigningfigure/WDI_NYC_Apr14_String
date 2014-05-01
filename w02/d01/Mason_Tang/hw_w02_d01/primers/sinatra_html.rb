require 'sinatra'

get '/' do
  <<-HTML


  <section>
    <article>
      <h2>About Me</h2>
      <ul>
        <p>I was born and raised in Queens, NY on August 2nd, 1988. My parents are from Taiwan and my father came to the United States in 1969. My father received his M.A. in Computer Science and Nuclear Engineering. The Fortran computers he worked on could fill up an entire room. The first computer I owned was a Monorail 166LS Desktop from 1996. The following summer I took an HTML class at a local day camp. It was here where I built my first simple website with all of my favorite superheroes and their powers.<br /><br />

        In 2002, I attended Stuyvesant High School. Here, I focused mainly on mathematics and economics. I played varsity tennis, played the trumpet and alto saxophone, and managed our audio/visual team for our school productions. During high school I also had a marketing internship at Atari Inc which provided me with an invaluable insight into the gaming industry.<br /><br />

        In 2006 I attended Wesleyan University where I received a Bachelors Degree in Economics, with an emphasis on international trade and economic development. During my junior year my roommate and I started Wesmenus.com which was the "menupages" of the Wesleyan campus. In the summer of 2007 and 2008 I backpacked across Europe.<br /><br />

        After college I lived in Prague, Czech Republic for two months. When I returned, I started an import/export business focusing on marketing and selling solar golf carts and Czech mineral water to new international markets. In 2009 I joined Cypher Entertainment. augmented reality tech company, as a project manager.
        I have also been an investor and advisor to creative production house, Matte, and helped them put on the Full Moon event on Governor's Island in June 2013.<br /><br />

        As for the next step in my life, I am looking forward to becoming a web developer with the help of General Assembly&#39s WDI program.


        </p>
      </ul>
    </article>
  </section>


</body>



  HTML
end

get '/contact' do

  <<-HTML
    <section>
    <h2>Contact</h2>

    <p>Mason W. Tang<br />
    New York, NY<br />
    Tel: (917) 881-6740<br />
    Email: <a href="mailto:mwillistang@gmail.com">mwillistang@gmail.com</a><br />
    Github: masewillis<br />
    LinkedIn: <a href="http://www.linkedin.com/pub/mason-tang/27/523/746/">Mason Tang</a></p>
  </section>

  HTML
end

get '/albums' do
  <<-HTML

<article>
      <h2>Favorite Albums</h2>
      <ul>
        <li>The Ramones - Rocket to Russia</li>
        <li>The Beatles - Abbey Road</li>
        <li>Notorious B.I.G. - Ready to Die</li>
      </ul>
    </article>
  </section>
  HTML
end
