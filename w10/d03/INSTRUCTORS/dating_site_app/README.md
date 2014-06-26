# RSpec in Rails

How this app was set up:

```shell
rails new --skip-test-unit --skip-spring -d postgresql dating_site_app
cd dating_site_app
echo 'gem "rspec-rails"' >> Gemfile
bundle install --binstubs
bin/rails generate rspec:install
bin/rails generate model user email:string password_digest:string
bin/rake db:migrate RAILS_ENV=test
```

Running specs:

```shell
bin/rspec
```

