require "rails_helper"

RSpec.describe "sessions/new.html.erb", type: :view do
  it "renders a form" do
    render
    expect(rendered).to include "Email"    
    expect(rendered).to include "Password"
  end
end