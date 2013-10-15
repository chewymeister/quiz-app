require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  include BCrypt

  validates_presence_of :name, message: "you must fill in all required fields"
  validates_presence_of :email
  validates_presence_of :password
  validates_confirmation_of :password

  def password= new_password
    @password = Password.create new_password
    self.password_hash = @password
  end

  def password
    @password ||= Password.new password_hash
  end

  def self.authenticate email, password
    user = find_by_email email
    if user.password == password
      user
    end
  end

end


