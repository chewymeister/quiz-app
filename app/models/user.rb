require 'bcrypt'

class User < ActiveRecord::Base
  # attr_reader :password
  # users.password_hash in the database is a :string
  include BCrypt

  validates_presence_of :name, message: "you must fill in your name"
  validates_presence_of :email, message: "you must fill in your email"
  validates_presence_of :password, message: "you must fill in your password"
  validates_confirmation_of :password, message: "password doesn't match password confirmation"

  def password= new_password
    @password = Password.create new_password
    self.password_hash = @password
  end

  def password
    @password ||= Password.new password_hash
  end

  def self.authenticate email, password
    user = find_by_email email
    if !user.nil? && user.password == password
      user
    end
  end

end


