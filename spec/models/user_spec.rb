require 'spec_helper'

describe User do

  let(:user) {User.new(:name=>"test",:email=>"test")}

  it 'takes a word and generates a new password hash' do
    user.password = 'abc'
    expect(user.password.to_s).not_to eq 'abc'
  end

  it 'always has a password regardless whether it has been set or not' do
    expect {user.password}.to raise_error BCrypt::Errors::InvalidHash
  end

  it 'should validate the presence of a name' do
    expect(validate_presence_of(:name)).to be_true
  end

  it 'should validate the presence of a email' do
    expect(validate_presence_of(:email)).to be_true
  end

  it 'should validate the presence of a password' do
    expect(validate_presence_of(:password)).to be_true
  end

  it 'should validate the presence of a password confirmation' do
    expect(validate_presence_of(:password_confirmation)).to be_true
  end

  it 'should validate that the password and password confirmation field are the same' do
    user.password = "abc"
    user.password_confirmation = "123"
    expect(user).to_not be_valid
  end

  it 'should be valid with correct password confirmation' do
    user.password = "abc"
    user.password_confirmation = "abc"
    expect(user).to be_valid
  end

  it 'should complain if all fields not filled in' do
    user.name = nil
    user.password = 'abc'
    user.password_confirmation = 'abc'
    expect(user).to_not be_valid
    expect(user.errors.values.flatten).to include("you must fill in all required fields")
  end

end