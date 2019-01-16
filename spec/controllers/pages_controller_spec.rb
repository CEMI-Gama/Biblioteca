require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #secret]" do
    it "returns http success" do
      get :secret]
      expect(response).to have_http_status(:success)
    end
  end

end
