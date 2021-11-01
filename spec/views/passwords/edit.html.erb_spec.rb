require "rails_helper"

RSpec.describe "passwords/edit.html.erb", type: :view do
  let(:user) { User.new( email: "bob@example.com", password: "password") }

  before do
    assign(:users, [user])
    render
  end
  
  it "renders a form" do
    render
    expect(rendered).to include "Edit passwords"
    expect(rendered).to include "Password"
    expect(rendered).to include "Password confirmation"
    expect(rendered).to include "Update Password"    
  end
end