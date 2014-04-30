get '/styles.css' do
  <<-HTML
  body {
    text-align: center;
    background: "http://www.hdwallpapers.in/walls/abstract_color_background_picture_8016-wide.jpg";
    background-size: cover;
    background-position: center;
    }
  h1 {
    text-align: center;
    font-size: 36px;
    font-style: bold;
  }
  a {
    color: white;
    padding: 15px;
    margin: 0 auto;
  }
  input[type="submit"] {
    font-size: 45px;

  }
  .yes {
    background-color: green;
    font-color: white;
    border-radius: 5px;
    font-size: 36px;
    text-decoration: none;
  }
  .no {
    background-color: red;
    font-color: white;
    border-radius: 5px;
    font-size: 36px;
    text-decoration: none;
  }
  HTML

end
