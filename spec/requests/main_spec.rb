require "rails_helper"

RSpec.describe "Main", type: :request do
  describe "GET /" do
    it "returns a 200" do
      get root_path
      expect(response.code).to eq "200"
    end
  end
end