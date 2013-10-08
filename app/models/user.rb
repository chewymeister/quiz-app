require 'bcrypt'

class User < ActiveRecord::Base

  # users.password_hash in the database is a :string
  include BCrypt

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def password
    @password ||= Password.new(password_hash)
  end

end