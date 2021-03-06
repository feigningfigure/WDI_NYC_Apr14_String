#OMDB Hash return
{
"Title":"True Grit",
"Year":"1969",
"Rated":"N/A",
"Released":"11 Jun 1969",
"Runtime":"128 min",
"Genre":"Adventure, Western, Drama",
"Director":"Henry Hathaway",
"Writer":"Charles Portis (novel), Marguerite Roberts (screenplay)",
"Actors":"John Wayne, Glen Campbell, Kim Darby, Jeremy Slate",
"Plot":"A drunken, hard-nosed U.S. Marshal and a Texas Ranger help a stubborn young woman track down her father's murderer in Indian territory.",
"Language":"English",
"Country":"USA",
"Awards":"Won 1 Oscar. Another 7 wins & 5 nominations.",
"Poster":"http://ia.media-imdb.com/images/M/MV5BMTYwNTE3NDYzOV5BMl5BanBnXkFtZTcwNTU5MzY0MQ@@._V1_SX300.jpg",
"Metascore":"N/A",
"imdbRating":"7.4",
"imdbVotes":"27,075",
"imdbID":"tt0065126",
"Type":"movie",
"Response":"True"
}

#To create the database
rails new movie -d postgresql

rails db:create

#To generate the tables
rails generate model Movie title:string year:integer rated:string released:string genre:string director:string writer:string actors:string plot:string language:string country:string award:string poster:string metascore:string imdbrating:integer imdbvotes:integer type:string response:string

rake db:migrate

rails console


title: string
year: integer
rated: string
released: string
genre: string
director: string
writer: string
actors: string
plot: string
language: string
country: string
award: string
poster: string
metascore: string
imdbrating: integer
imdbvotes: integer
type: string
response: string

