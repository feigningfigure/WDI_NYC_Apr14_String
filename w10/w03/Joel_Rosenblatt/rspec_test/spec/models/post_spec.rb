require 'rails_helper'

RSpec.describe Post, :type => :model do
  it("should be able to create a new post") do
    post = Post.create
    expect(post).to be_a(Post)
  end
end
