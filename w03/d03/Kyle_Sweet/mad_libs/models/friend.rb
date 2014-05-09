class Friend < ActiveRecord::Base
  # no attr_accessor

  include Facebook
  include Imgur

  def initialize(name)
    @name = name
  end

end
