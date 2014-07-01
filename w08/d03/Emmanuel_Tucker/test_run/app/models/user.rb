class User < ActiveRecord::Base
      has_secure_password

  def to_json(options={})
    options[:except] ||= [:password_digest]
    super(options)
  end

end

