###Week02-Day03

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `hw_w02_submission`

---

##Morning Exercise 

#### An Array of Objects

-  Create an array of developer objects

-  A developer: 
	- Should have a first name 
	- Should have a last name 
	- Should have a randomly assigned favorite programming language
	- Should have a to_s method that prints something like:
		"My name is David Montricher and I love to program in Klingon."
	
- The below arrays may come in handy:

spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]


---

##Part 1

###ERB Calculator 

- Build a Sinatra App that performs all the basic calculator operations
- The result should be rendered in the browswer **WITH ERB**.
- Examples of use:
- Request: `http://localhost:4567/add/3/5`
- Response (displayed): `8`
- Request: `http://localhost:4567/subtract/10/6`
- Response (displayed): `4`
- Request: `http://localhost:4567/multiply/11/6`
- Response (displayed): `66`
- Request: `http://localhost:4567/divide/12/6`
- Response (displayed): `2`

###RENDER YOUR RESPONSE WITH ERB

---

##Part 2

###Stock App

- Build a Sinatra App that will take a stock symbol and return stock information
- You should include a `layout.erb` and a css stylesheet. 

- Set up a welcome page
	- Display "Welcome to WDI Stocks" when there is `GET` request to `/`
- Define a method that makes a request to the `YahooFinance` api via the `YahooFinance` gem.
	- This method should take, as paramater, a stock ticker
	- This method should return data about the stock
	- Test this method manually in pry
	
- Sample call
```
YahooFinance::get_standard_quotes()
```

- BONUS:
	- Explore the YahooFinance gem's documentation and add more than one piece of data. 
	- Think of a way to handle errors



#WORK IN YOUR OWN FOLDER ONLY!