require 'rails_helper'

RSpec.describe "Tags", type: :request do
  describe "GET /index" do
    it "does not render a different template" do
      get "/tags/new"
      expect(response).to_not render_template(:show)
    end
    it "returns http success" do
      get "/tags"
      expect(response).to have_http_status(:success)
    end
  end
end
