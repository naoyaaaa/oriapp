class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @goal = @user.goals
    @reflections = Reflection.where(goal: @goal)
  end
end
