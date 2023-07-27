class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @goals = Goal.includes(:user).order("start_date DESC")
  end

  def show
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user = current_user
    if @goal.save
      redirect_to root_path, notice: 'Goal was successfully created.'
    else
      puts @goal.errors.full_messages # エラーメッセージを出力
      render :new
    end
  end
  
  

  def edit
  end

  def update
    if @goal.update(goal_params)
      redirect_to user_path(current_user), notice: '更新が成功しました。'
    else
      render :edit
    end
  end

  def destroy
    @goal.destroy
    redirect_to user_path(current_user)
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:title, :description, :category, :start_date, :image)
  end

  
end
