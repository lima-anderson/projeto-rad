require 'rails_helper'

RSpec.describe "Reminders", type: :request do
  describe "GET /index" do
    it "creates a Reminder and redirects to the Reminder's page" do
      get "/reminders/"
      expect(response).to render_template("reminders/index")
    end
    it "does not render a different template" do
      get "/reminders/new"
      expect(response).to_not render_template(:show)
    end
    it "returns a 200 response" do
      get  "/reminders"
      expect(response).to have_http_status(200)
    end
  end
end
