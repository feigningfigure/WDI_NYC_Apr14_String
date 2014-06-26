require 'spec_helper'

describe Person do
  let (:person){Person.new("Fred")}
  it "should be initialized with a name" do
        expect(person.name).to eq("Fred")
    end
end
