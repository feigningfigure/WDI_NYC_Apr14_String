# Learning the Rails Asset Pipeline

**Main Guide Link**: http://guides.rubyonrails.org/asset_pipeline.html

# Topics

## Production Mode

When you invoke rails like so:

```shell
SECRET_KEY_BASE=$(bin/rake secret) RAILS_ENV=production bin/rails server
```

It boots in "production" mode, just like Heroku.

### Goal

Serve files from `app/assets` correctly while running locally (on your laptop)
in "production" mode; there should be no 404s.


## Image Paths in CSS/JS

In an ERB template, you can generate a Sprockets-friendly image tag like so:

```
<%= image_tag "rails.png" %>
```

### Goal

Find an image to put in `app/assets/images`.

Serve a CSS or Javascript file through `app/assets`, and reference that image's
URL correctly without having to hard-code the '/assets' folder.


## Deployment to Heroku

### Goal

Deploy a minimal app with at least one image, CSS, and javascript to Heroku,
and carefully document all of the necessary steps.


## Freeform

### Goal

Find something not listed above in the Asset Pipeline guide, or related to it,
and present it to the class. Some ideas:

- Fingerprinting: What is it, how does it work?
- Environment-specific configs: What are the differences in defaults?
