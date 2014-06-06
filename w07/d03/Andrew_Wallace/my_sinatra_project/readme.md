Three pieces:
Client
Server
Facebook

CLIENT -- Views that will be rendered and send including Javascript (jQuery) events
  (Server step 1) A single page (index.erb) will be served up from server (step 1) alongside a layout.erb  (REQUESTS)
  (Server step 2) Render requested/received information from the server
  (Server step 3) Send information when adding a friend to be added to the database


FACEBOOK API
Two calls:

define a method that:
1.  Friend information
  ask facebook API for json string
  convert json string to a hash
  return the hash


define a method that:
2.  Get friend photo
  ask facebook API for json string
  convert json string to a hash
  return the hash


SERVER

Sinatra should respond to requests (RESPONSES)

  1. Initial client http request that serves up the HTML page layout with form and button.  (get '/')
    with that comes JavaScript that contains the calls for additional information.

  2. Client ajax request - Populate the DOM with my current list of friends  (get '/friends')

      recieve request
      read friends from file (from database)
      send the information from database to the client for rendering

  3. Client ajax request - Add a new person to my list of friends and call (#2). (post '/friend_new')

      receive post entry from client
      write information to database
      Go to #2.


