require 'rails_helper'

describe UsersController, type: :request do
  let(:users) { User.all}
  describe "GET /index" do
    it "returns http success" do
      get "/users/index"
      expect(response).to have_http_status(:success)
    end
    it 'assigns all users to @users' do
      get "/users/index"
      expect(assigns('users')).to eq(users)
    end
  end
  
  # describe "GET /show" do
  #   it "returns http success" do
  #     get "/users/show"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /new" do
  #   it "returns http success" do
  #     get "/users/new"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /edit" do
  #   it "returns http success" do
  #     get "/users/edit"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /delete" do
  #   it "returns http success" do
  #     get "/users/delete"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
