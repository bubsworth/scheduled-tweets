require "rails_helper"

RSpec.describe "registrations/new.html.erb", type: :view do
  it "renders a form" do
    render
    expect(rendered).to include "Email"    
    expect(rendered).to include "Password"
    expect(rendered).to include "Password confirmation"
  end

  context "there are errors" do
    it "lists all errors" do
      
    end
  end
end