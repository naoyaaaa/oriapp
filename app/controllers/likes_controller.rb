class LikesController < ApplicationController
  before_action :set_goal
  before_action :authenticate_user!

  def create
    like = current_user.likes.build(goal_id: params[:goal_id])
    like.save
    respond_to do |format|
      format.html { redirect_to root_path } # HTML形式のリクエストに対するレスポンス
      format.json { render json: { message: "いいねが追加されました", likes_count: @goal.likes_count } } # JSON形式のリクエストに対するレスポンス
      format.js
    end
  end

  def destroy
    like = Like.find_by(goal_id: params[:goal_id], user_id: current_user.id)
    like.destroy
    respond_to do |format|
      format.html { redirect_to root_path } # HTML形式のリクエストに対するレスポンス
      format.json { render json: { message: "いいねが削除されました", likes_count: @goal.likes_count } } # JSON形式のリクエストに対するレスポンス
      format.js
    end
  end

  def set_goal
    @goal = Goal.find(params[:goal_id])
  end
end
