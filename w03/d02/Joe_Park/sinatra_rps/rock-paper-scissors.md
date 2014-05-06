#Rock-Paper-Scissors
####America's Favorite Pastime

Today you are going to make a simple Rock, Paper, Scissors game!

Rock beats scissors.
Scissors beats paper.
Paper beats rock.


#Ready? 

Before starting you will pair up and take 8 minutes to plan the logic for the game and your app. **NO LAPTOPS NECESSARY** 


#1, 2, 3...

Create a new server using **Sinatra** and create a welcome page. The welcome page should be at the `/play` route on your server.

On the welcome page you should present the user with 3 options that they can click:

```
Rock
Paper
Scissors
```

#Shoot!

When a user clicks an option they should be taken to the `/play/<whatever_the_user_chose>` route. This page will display the winner of the game.

The logic of the game should use this route.

You should make a random selection for the computer, and use that to compare against the user's choice to decide who the winner is. 

So when the user selects __rock__ they should be taken to the `/play/rock` route and if the computer has chosen __scissors__ then the following should be displayed on the page:

```
You chose: rock!
Computer chose: scissors! 
Congratulations, You've WON! You are the greatest!
```

#### Build your structure first and make sure you can pass the data before programming the game.
