require "rails_helper"

RSpec.describe "main/index.html.erb", type: :view do
  let(:user) { User.new( email: "bob@example.com", password: "password") }

  before do
    assign(:users, [user])
    render
  end

  it "renders a heading" do
    expect(rendered).to include "Welcome to Scheduled Tweets"
  end
end