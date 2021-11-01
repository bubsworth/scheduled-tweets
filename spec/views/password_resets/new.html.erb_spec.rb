require "rails_helper"

RSpec.describe "password_resets/new.html.erb", type: :view do
  it "renders a form" do
    render
    expect(rendered).to include "Email"    
    expect(rendered).to include "Reset password"
  end
end