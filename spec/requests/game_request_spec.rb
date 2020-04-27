require 'rails_helper'

RSpec.describe "Games", type: :request do

  describe "GET /start" do
    it "returns http success" do
      get "/game/start"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /restart" do
    it "returns http success" do
      get "/game/restart"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /close" do
    it "returns http success" do
      get "/game/close"
      expect(response).to have_http_status(:success)
    end
  end

end
