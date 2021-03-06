require 'rails_helper'

RSpec.describe DoctorsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      doc = Doctor.create!
      get :show, id: doc.id
      expect(response).to have_http_status(:success)
    end
  end

end
