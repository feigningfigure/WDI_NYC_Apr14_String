# RSpec Cheatsheet

These recipes assume the following spec file:

```ruby
# spec/twilio_spec.rb

describe Twilio do
    it "EXAMPLE 1: should make a phone call", {:spammy => true} do
        ...
    end

    it "EXAMPLE 2: should send an SMS", {:spammy => true} do
        ...
    end

    it "EXAMPLE 3: should view an SMS" do
        ...
    end
end
```


## Run only examples that match a string

This will run examples 2 and 3:

```shell
rspec -e "SMS"
```


## Exclude examples that have a certain tag

This will exclude examples 1 and 2:

```shell
rspec --tag ~spammy
```


## Run only examples that have a certain tag

This will run examples 1 and 2:

```shell
rspec --tag spammy
```
