require "rails_helper"

RSpec.describe TrackingsController, :type => :controller do
  describe "when GET root" do
    it "responses successfully with an HTTP 200 status code" do
      get :show
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the show template" do
      get :show
      expect(response).to render_template("show")
    end

    it "can show estimate date" do
      get :show
    end

  end
end
