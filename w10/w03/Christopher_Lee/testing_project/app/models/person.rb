class Person < ActiveRecord::Base
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
