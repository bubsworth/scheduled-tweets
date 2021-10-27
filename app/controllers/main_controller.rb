class MainController < ApplicationController
  def index
    flash[:notice].now = "Logged in successfully"
    flash[:alert].now = "Invalid email or password"
  end
end