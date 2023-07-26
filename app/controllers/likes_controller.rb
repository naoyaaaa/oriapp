class LikesController < ApplicationController
  def create
    like = current_user.likes.build(goal_id: params[:goal_id])
    like.save
    redirect_to root_path
  end

  def destroy
    like = Like.find_by(goal_id: params[:goal_id], user_id: current_user.id)
    like.destroy
    redirect_to root_path
  end
end
