CREATE TABLE cards
(
  id serial NOT NULL primary key,
  username varchar(255),
  description text,
  instagram_picture_url text,
  
  male boolean,
  glasses boolean,
  hat boolean,

  facial_hair boolean,
    beard boolean,
    mustache boolean,
  
  jewelry boolean,
    earings boolean,
    facial_piercing boolean,

  hair_color varchar(255),
  eye_color varchar(255)
    -- skin_color varchar(255),


  -- smile boolean,
  -- long_hair boolean,
  -- balding boolean,
  -- facebook_username varchar(255),
);
