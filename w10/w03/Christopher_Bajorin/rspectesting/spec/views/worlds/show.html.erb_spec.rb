require 'spec_helper'

describe "worlds/show" do
  before(:each) do
    @world = assign(:world, stub_model(World,
      :name => "Name"
    ))
  end

  it "renders 'hello world!'" do
    render
    rendered.should eq("hello world!")
  end
end
