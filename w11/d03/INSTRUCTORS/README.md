# Jasmine Rails: Class Conventions

- `app`: **Your Code** - Code that you, personally, have written
  - `assets`: **Pipeline Assets** - Static files that will be served differently depending
    on the environment (smushed together in production for performance;
    separately in development for ease of debugging)
- `public`: **Simple Assets** - Static files that will be served the same way in all environments.
- `vendor`: **Dependencies** - That is, other people's code
- `spec`: **RSpec Tests**
  - `models`
  - `views`
  - `controllers`
  - `javascripts`: **Jasmine tests**
    - `models`
    - `views`
    - `controllers`
    - `support`: Jasmine configuration
