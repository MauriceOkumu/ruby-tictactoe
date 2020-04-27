require 'rails_helper'

describe UsersController, type: :request do

  let(:users) { User.all}
  describe "GET /index" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
    it 'assigns all users to @users' do
      get "/"
      expect(assigns('users')).to eq(users)
    end
  end
  
  describe "GET /show" do
  let(:user) { User.find(params[:id]) }
    before (:example) do
      def user
        @user ||= User.new
       end
      end
    it "returns http success" do
      get "/users/"
      expect(response).to have_http_status(:success)
    end

    it 'Finds a user by id' do
      get "/users/"
      expect(assigns('user')).to eq(user.id)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/users/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    let(:user) { User.edit(params[:id]) }
    before (:example) do
      def user
        @user ||= User.new
       end
      end
    it "returns http success" do
      get "/users/"
      expect(response).to have_http_status(:success)
    end
    it 'Finds a user by id' do
      get "/users/"
      expect(assigns('user')).to eq(user.id)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/users/"
      expect(response).to have_http_status(:success)
    end
  end

end
