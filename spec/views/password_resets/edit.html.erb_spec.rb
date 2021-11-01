require "rails_helper"

RSpec.describe "password_resets/edit.html.erb", type: :view do
  it "renders a form" do
    render
    expect(rendered).to include "Password"
    expect(rendered).to include "Password confirmation"
    expect(rendered).to include "Reset Password"    
  end
end