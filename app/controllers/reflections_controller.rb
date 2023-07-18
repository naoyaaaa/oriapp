class ReflectionsController < ApplicationController
  def new
    @goal = Goal.find(params[:goal_id])
    @reflection = @goal.reflections.build
    @reflection.day_number = @goal.reflections.count + 1 
  end

  def create
    @goal = Goal.find(params[:goal_id])
    @reflection = @goal.reflections.build(reflection_params)
    if @reflection.save
      redirect_to user_path(current_user), notice: 'リフレクションが作成されました。'
    else
      render :new
    end
  end


  
  private

  def reflection_params
    params.require(:reflection).permit(:content, :day_number)
  end
end
