- There's a file in your home directory called .bash_profile (for some of you it might just be .profile)

- You can use the "export" command to set environment variables in your main shell

- For example

```
export MY_TWILIO_SID="23sd8g0238hadsg23985"
```

- You'll have to tell bash to read it again using the "source" command (source ~/.bash_profile)

- Now it's in your environment:

```
echo $MY_TWILIO_SID
```

- And now Ruby has access to it through the ENV variable:

```ruby
ENV['MY_TWILIO_SID']
```
