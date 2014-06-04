# An AJAX Status Ticker

"Polling" is a common design pattern in asynchronous software.

Polling is when one process constantly checks in with another process
to see if there are any updates available.

Everybody has at least one really annoying friend who practices this
pattern using text messages.

"Hey. What's up?"

"Yo. Anything cool going on?"

"Hey how you doing?"

"Yo"

"Hey are you going to lunch?"

"Hey how was lunch"

"Hey"

Get polled!

## Exercise Goal

Simulate the "cool factor" of a quiz app that tells every user
when a new quiz was created.

You can accomplish this with the following steps:

1. Open two browser tabs, both pointing to `http://localhost:4567/`
2. In Tab A, create a new quiz.
3. Switch to Tab B and verify that the page updated **even though
   you didn't do anything on Tab B**.

In other words, if your friend on Mars has their browser open on your
app, and you create a new quiz from your browser here on Earth, they
should see a change on their computer even though they're just chilling
out and looking at the page.

## Requirements

This is a more open-ended exercise than Hangman. The exact design of
the "ticker" or "notification" is up to you.

The only requirements are:

- The update must display automatically on any tab left open, WITHOUT
  the user needing to click on anything.
- The update must appear within 5 seconds of a new quiz being made.
- The update must contain some information about the new quiz (like its name).

## Guidelines

If you're not sure where to start, here are some directions you can go in:

### Polling

How will your javascript poll the server? Probably with [setInterval](https://developer.mozilla.org/en-US/docs/Web/API/Window.setInterval)!

### Detecting new quizzes

How will your javascript know whether a NEW quiz was created?

- You could store the creation time of a quiz and create a new (not-very-RESTful)
  route specifically for returning the most recently-created quiz.
- You could have the javascript store the last quiz it looked at and display
  the update when the server returns a quiz with a different name or ID.

### User Experience

How will the ticket/notification appear to the user?

- You could use `alert()` to make a popup box appear.
- You could have an element dedicated to displaying the latest quiz whose
  contents are changed when a new quiz is detected.
