class Friend < ActiveRecord::Base
  # no attr_accessor

  include Facebook

  def initialize(name)
    @name = name
  end

end
