require 'spec_helper'

describe UsersController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

    it "has no errors when you create a valid user" do
      post :create, user: {name: 'test', email: 'test@test.com', password: 'test', password_confirmation: 'test'}
      # expect(flash[:errors]).to eq []
      expect(response).to redirect_to '/'
    end
  end

end
