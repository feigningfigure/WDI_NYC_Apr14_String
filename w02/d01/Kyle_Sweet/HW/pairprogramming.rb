require 'sinatra'


get '/' do
<<-HTML
<!DOCTYPE html>
<link href='http://fonts.googleapis.com/css?family=Fjalla+One' rel='stylesheet' type='text/css'>
<head>
  <title>TEST</title>
  <style>
    body {
    background-color: #5f5f5f;
    background-position: center;
    text-align: center;
    }


    h1 {
    text-align:center;
    font-size: 85px;
    line-height:90px;
    margin:0 auto;
    font-family: Fjalla One, sans-serif;
    color: #dadada;
    }

    h2 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0 auto;
    text-decoration:none;
    }

    h3 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0px, 70px, 0px, 0px;
    text-decoration: none;
    }


    }

    </style>
      </head>
      <body>
      <table>
      <td>
        <h1>DO YOU HAVE A </br> TEST FOR THAT?</h1>
      </td>
      <td>
       <a href = 'http://localhost:4567/pass'><h2>YES / </h2></a>
      </td>
      <td>
       <a href = 'http://localhost:4567/fail'><h3>NO</h3></a>
      </td>
    </body>
  HTML

end


get '/:ans' do

case params[:ans]

when "pass"

<<-HTML
<!DOCTYPE html>
<link href='http://fonts.googleapis.com/css?family=Fjalla+One' rel='stylesheet' type='text/css'>
<head>
  <title>TEST</title>
  <style>
    body {
    background-color: #5f5f5f;
    background-position: center;
    text-align: center;
    }


    h1 {
    text-align:center;
    font-size: 85px;
    line-height:90px;
    margin:0 auto;
    font-family: Fjalla One, sans-serif;
    color: #dadada;
    }

    h2 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0 auto;
    text-decoration:none;
    }

    h3 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0px, 70px, 0px, 0px;
    text-decoration: none;
    }


    }

    </style>
      </head>
      <body>
      <table>
      <td>
        <h1>DOES THE <br> TEST PASS?</h1>
      </td>
      <td>
       <a href = 'http://localhost:4567/pass2'><h2>YES / </h2></a>
      </td>
      <td>
       <a href = 'http://localhost:4567/fail2'><h3>NO</h3></a>
      </td>
    </body>
  HTML

when "fail"

<<-HTML
<!DOCTYPE html>
<link href='http://fonts.googleapis.com/css?family=Fjalla+One' rel='stylesheet' type='text/css'>
<head>
  <title>TEST</title>
  <style>
    body {
    background-color: #5f5f5f;
    background-position: center;
    text-align: center;
    }


    h1 {
    text-align:center;
    font-size: 85px;
    line-height:90px;
    margin:0 auto;
    font-family: Fjalla One, sans-serif;
    color: #dadada;
    }

    h2 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0 auto;
    text-decoration:none;
    }

    h3 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0px, 70px, 0px, 0px;
    text-decoration: none;
    }


    }

    </style>
      </head>
      <body>
      <table>
      <td>
        <h1>WRITE A TEST!</h1>
      </td>
      <td>
       <a href = 'http://localhost:4567/'><h2>DONE</h2></a>
      </td>
    </body>
  HTML
when "pass2"

<<-HTML
<!DOCTYPE html>
<link href='http://fonts.googleapis.com/css?family=Fjalla+One' rel='stylesheet' type='text/css'>
<head>
  <title>TEST</title>
  <style>
    body {
    background-color: #5f5f5f;
    background-position: center;
    text-align: center;
    }


    h1 {
    text-align:center;
    font-size: 85px;
    line-height:90px;
    margin:0 auto;
    font-family: Fjalla One, sans-serif;
    color: #dadada;
    }

    h2 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0 auto;
    text-decoration:none;
    }

    h3 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0px, 70px, 0px, 0px;
    text-decoration: none;
    }


    }

    </style>
      </head>
      <body>
      <table>
      <td>
        <h1>NEED TO REFACTOR?</h1>
      </td>
      <td>
       <a href = 'http://localhost:4567/pass3'><h2>YES / </h2></a>
      </td>
      <td>
       <a href = 'http://localhost:4567/fail3'><h3>NO</h3></a>
      </td>
    </body>
  HTML

when "fail2"

<<-HTML
<!DOCTYPE html>
<link href='http://fonts.googleapis.com/css?family=Fjalla+One' rel='stylesheet' type='text/css'>
<head>
  <title>TEST</title>
  <style>
    body {
    background-color: #5f5f5f;
    background-position: center;
    text-align: center;
    }


    h1 {
    text-align:center;
    font-size: 85px;
    line-height:90px;
    margin:0 auto;
    font-family: Fjalla One, sans-serif;
    color: #dadada;
    }

    h2 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0 auto;
    text-decoration:none;
    }

    h3 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0px, 70px, 0px, 0px;
    text-decoration: none;
    }


    }

    </style>
      </head>
      <body>
      <table>
      <td>
        <h1>WRITE JUST ENOUGH CODE </br> FOR THE TEST TO PASS</h1>
      </td>
      <td>
       <a href = 'http://localhost:4567/'><h2>DONE</h2></a>
      </td>
    </body>
  HTML

when "pass3"

<<-HTML
<!DOCTYPE html>
<link href='http://fonts.googleapis.com/css?family=Fjalla+One' rel='stylesheet' type='text/css'>
<head>
  <title>TEST</title>
  <style>
    body {
    background-color: #5f5f5f;
    background-position: center;
    text-align: center;
    }


    h1 {
    text-align:center;
    font-size: 85px;
    line-height:90px;
    margin:0 auto;
    font-family: Fjalla One, sans-serif;
    color: #dadada;
    }

    h2 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0 auto;
    text-decoration:none;
    }

    h3 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0px, 70px, 0px, 0px;
    text-decoration: none;
    }


    }

    </style>
      </head>
      <body>
      <table>
      <td>
        <h1>REFACTOR THE CODE.</h1>
      </td>
      <td>
       <a href = 'http://localhost:4567/'><h2>DONE</h2></a>
    </body>
  HTML

when "fail3"

<<-HTML
<!DOCTYPE html>
<link href='http://fonts.googleapis.com/css?family=Fjalla+One' rel='stylesheet' type='text/css'>
<head>
  <title>TEST</title>
  <style>
    body {
    background-color: #5f5f5f;
    background-position: center;
    text-align: center;
    }


    h1 {
    text-align:center;
    font-size: 85px;
    line-height:90px;
    margin:0 auto;
    font-family: Fjalla One, sans-serif;
    color: #dadada;
    }

    h2 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0 auto;
    text-decoration:none;
    }

    h3 {
    font-size: 45px;
    font-style: italic;
    font-family: Fjalla One, sans-serif;
    color: #353535;
    margin: 0px, 70px, 0px, 0px;
    text-decoration: none;
    }


    }

    </style>
      </head>
      <body>
      <table>
      <td>
        <h1>SELECT A NEW FEATURE<br>
          TO IMPLEMENT.</h1>
      </td>
      <td>
       <a href = 'http://localhost:4567/'><h2>DONE</h2></a>
      </td>
    </body>
  HTML




else "PAGE NOT FOUND"
  end
end
