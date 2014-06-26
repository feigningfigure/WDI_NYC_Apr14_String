# require 'hello'
require 'spec_helper'
require 'rails_helper'

RSpec.describe Hello do

  it "should take a phrase" do
    phrase = Hello.new("Hello World")
    expect(phrase). to be_a(Hello)
  end

  it "should print the phrase" do
    phrase = Hello.new("Hello World")
    expect(phrase.print_phrase).to eq("Hel World")
  end

end
