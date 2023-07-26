class LikesController < ApplicationController
  before_action :set_goal

  def create
    like = current_user.likes.build(goal_id: params[:goal_id])
    like.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    like = Like.find_by(goal_id: params[:goal_id], user_id: current_user.id)
    like.destroy
    respond_to do |format|
      format.js
    end
  end

  def set_goal
    @goal = Goal.find(params[:goal_id])
  end

end
