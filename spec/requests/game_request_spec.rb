require 'rails_helper'

describe GameController, type: :request do

  describe "GET /start" do
    before(:example) { get "/game/start" } 

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it 'renders /start template' do
      expect(response).to render_template('start')
    end
  end

  describe "GET /restart" do
    before(:example) { get "/game/restart" }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it 'renders /restart template' do
      expect(response).to render_template('restart')
    end
  end

  describe "GET /close" do
    before(:example) { get "/game/close" }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it 'renders /close template' do
      expect(response).to render_template('close')
    end
  end

end
