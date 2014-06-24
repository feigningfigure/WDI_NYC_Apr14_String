# API Learning Objectives

- **Content**: Describe the anatomy of HTTP requests and responses and how you could use that knowledge to use an API.
    - Describe the difference between HTTP POST and GET requests.
- **Applied**: Use `curl` **and** `HTTParty` to make the same authenticated request to the Twilio API.
- **Synthesis**: Use `curl` **and** `HTTParty` to make an authenticated request to a new API.


# HTTP and Authentication Cheat-Sheet

- [HTTParty examples](https://github.com/jnunemaker/httparty/tree/master/examples/)
- [Net::HTTP cheat-sheet](https://github.com/augustl/net-http-cheat-sheet)
- Debug output
    - curl: `curl -v`
    - HTTParty: `options = { "debug_output" => $stdout }`
- Basic HTTP authentication
    - curl: `curl -u username:password`
    - HTTParty: `options = { "basic_auth" => { "username" => username, "password" => pw } }`

