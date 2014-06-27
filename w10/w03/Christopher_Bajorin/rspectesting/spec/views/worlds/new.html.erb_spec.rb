require 'spec_helper'

describe "worlds/new" do
  before(:each) do
    assign(:world, stub_model(World,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new world form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", worlds_path, "post" do
      assert_select "input#world_name[name=?]", "world[name]"
    end
  end
end
