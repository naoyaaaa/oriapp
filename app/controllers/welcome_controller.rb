class WelcomeController < ApplicationController
  def index

    redirect_to goals_path if user_signed_in?
  end
end
