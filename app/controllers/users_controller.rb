class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @goal = current_user.goals
    @goal = Goal.includes(:user).order("start_date DESC")
  end
end
