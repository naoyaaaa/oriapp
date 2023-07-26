class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @goals = @user.goals.includes(:reflections).order(created_at: :desc)
    @reflection_goal_count = @goals.count { |goal| goal.reflections.count == 3 && goal.start_date <= Time.current.to_date - 2.days }
    @total_count = @reflection_goal_count 

    @can_make_declaration = @reflection_goal_count 
  end
end
