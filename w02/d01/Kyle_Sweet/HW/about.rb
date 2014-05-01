require 'sinatra'

get '/' do
<<-HTML
<!DOCTYPE html>
<head>
  <title>Kyle Sweet Bio Page</title>
  <style>
    body {
    background: url("http://i.imgur.com/8lI2wTj.jpg");
    background-size: cover;
    background-position: center;
    }

    img {
    border-radius: 50%;
    border: 2px solid white;
    margin:20px 0px 0px 5px;
    }

    h1 {
    font-size: 85px;
    line-height:90px;
    margin:0px 0px 0px 20px;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    }

    h2 {
    font-size: 20px;
    font-style: italic;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    margin: 130px 0px 0px 20px;
    }


    h3 {
    font-size: 20px;
    font-style: italic;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    }

    h4 {
    font-size: 16px;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    text-align:center;
    }


    h5 {
    font-size: 12px;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    text-align:center;
    }


    p {
    font-size: 16px;
    font-family: Georgia, serif;
    color: #4b4b4b;
    text-align:justify;
    max-width:500px;
    }

    input [type="email"]{
    align:center;
    border: 1;
    background-color: #353535;
    padding: 10px;
    font-size: 9px;
    }

    input[type="submit"] {

    border: none;
    background: #353535;
    color: white;
    padding: 8;
    margin:10px 0px 0px 0px;
    font-size:9;
    }

    </style>
      </head>
      <body>

      <table>
      <tr>

      <td>
       <img src="http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/2/005/014/2fa/0edf899.jpg"/>
      </td>

      <td>
        <h1>KYLE<br>SWEET</h1>
      </td>

      <td>
        <h2>i'd new here...</h2>
      </td>

      </tr>
    </table>


    <table>
        <td width=200px, align="center" valign="top">
        </td>
        <td colspan="475" class="overview">

     <h3>overview</h3>
         <p>I'm new to the city as of 6 or so months ago... I used to work in some design and photo retouching and now I want to get into
          web development and create a site or two...if I can come out of this with a working knowledge of all this stuff - I'll be more than content.
         </p>

    </table>


    </body>
  HTML
end



get '/:page' do
  case params[:page]
  when "contact"
<<-HTML
<!DOCTYPE html>
<head>
  <title>Kyle Sweet Bio Page</title>
  <style>
    body {
    background: url("http://i.imgur.com/8lI2wTj.jpg");
    background-size: cover;
    background-position: center;
    }

    img {
    border-radius: 50%;
    border: 2px solid white;
    margin:20px 0px 0px 5px;
    }

    h1 {
    font-size: 85px;
    line-height:90px;
    margin:0px 0px 0px 20px;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    }

    h2 {
    font-size: 20px;
    font-style: italic;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    margin: 130px 0px 0px 20px;
    }


    h3 {
    font-size: 20px;
    font-style: italic;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    }

    h4 {
    font-size: 16px;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    text-align:center;
    }


    h5 {
    font-size: 12px;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    text-align:center;
    }


    p {
    font-size: 16px;
    font-family: Georgia, serif;
    color: #4b4b4b;
    text-align:justify;
    max-width:500px;
    }

    input [type="email"]{
    align:center;
    border: 1;
    background-color: #353535;
    padding: 10px;
    font-size: 9px;
    }

    input[type="submit"] {

    border: none;
    background: #353535;
    color: white;
    padding: 8;
    margin:10px 0px 0px 0px;
    font-size:9;
    }

    </style>
      </head>
      <body>

      <table>
      <tr>

      <td>
       <img src="http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/2/005/014/2fa/0edf899.jpg"/>
      </td>

      <td>
        <h1>KYLE<br>SWEET</h1>
      </td>

      <td>
        <h2>i'd new here...</h2>
      </td>

      </tr>
    </table>


    <table>
        <td width=200px, align="center" valign="top">
        </td>
        <td colspan="475" class="overview">

     <h3>contact</h3>
         <p>You can reach me at kssweet@gmail.com or 908.803.6179...thanks for your interest.
         </p>

    </table>


    </body>
  HTML

  when "albums"
<<-HTML
<!DOCTYPE html>
<head>
  <title>Kyle Sweet Bio Page</title>
  <style>
    body {
    background: url("http://i.imgur.com/8lI2wTj.jpg");
    background-size: cover;
    background-position: center;
    }

    img {
    border-radius: 50%;
    border: 2px solid white;
    margin:20px 0px 0px 5px;
    }

    h1 {
    font-size: 85px;
    line-height:90px;
    margin:0px 0px 0px 20px;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    }

    h2 {
    font-size: 20px;
    font-style: italic;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    margin: 130px 0px 0px 20px;
    }


    h3 {
    font-size: 20px;
    font-style: italic;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    }

    h4 {
    font-size: 16px;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    text-align:center;
    }


    h5 {
    font-size: 12px;
    font-family: Impact, Charcoal, sans-serif;
    color: #353535;
    text-align:center;
    }


    p {
    font-size: 16px;
    font-family: Georgia, serif;
    color: #4b4b4b;
    text-align:justify;
    max-width:500px;
    }

    input [type="email"]{
    align:center;
    border: 1;
    background-color: #353535;
    padding: 10px;
    font-size: 9px;
    }

    input[type="submit"] {

    border: none;
    background: #353535;
    color: white;
    padding: 8;
    margin:10px 0px 0px 0px;
    font-size:9;
    }

    </style>
      </head>
      <body>

      <table>
      <tr>

      <td>
       <img src="http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/2/005/014/2fa/0edf899.jpg"/>
      </td>

      <td>
        <h1>KYLE<br>SWEET</h1>
      </td>

      <td>
        <h2>i'd new here...</h2>
      </td>

      </tr>
    </table>


    <table>
        <td width=200px, align="center" valign="top">
        </td>
        <td colspan="475" class="overview">

     <h3>favorite albums</h3>
         <ul>
            <li>L.A. Woman</li>
            <li>Rumors</li>
            <li>The Chronic</li>
         </ul>

    </table>


    </body>
  HTML

else
  "PAGE NOT FOUND"
end

end
