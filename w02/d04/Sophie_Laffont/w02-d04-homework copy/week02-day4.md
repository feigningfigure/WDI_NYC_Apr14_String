###Week02-Day4


#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `hw_w02_submission`

---


## Morning Exercise

### Magic 8 Ball


Make a Magic 8 Ball using Sinatra!

Your game will:

- Accept a question from the user.
- Return the question as well as a randomly selected answer from 
  the array provided below.

```
["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]
```


#### Bonus 

- include a "Submit" button
- make your pages well styled; include an image
---

##Part 1
- Command line Receipt Generator
	- Ask for the name of the good/service provided
	- Ask for the cost of the good/service provided
	- Print a receipt
		- Here is an example of what the receipt file might look like:

```
- Company Name: Particular Assembly Inc.
- Good/Service Provided: Web-Development Refactoring
- Cost: $1,329.99
- Thank you for your patronage
```

---

##Part 2
- Receipt Generator Online
- Lets make a Sinatra version of the receipt generator 
	- The root should show a form with fields:
		- Name
		- Cost of good/services
	- Upon pressing submit, the receipt file should be created and a confirmation message (i.e. "Your receipt has been printed!") should be shown to the user.
- Generate all of your views using ERB.
- Be sure to include a `layout.erb`
- Include a stylesheet and be sure to style your views

***Bonus:***

- Include a [Google Font](https://www.google.com/fonts) in your stylesheet 


***Harder Bonus:***

- Include a view to show the user the name and cost of goods/services from the last receipt that was created.

---