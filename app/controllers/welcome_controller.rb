class WelcomeController < ApplicationController
  def index
    # ログインしている場合は投稿一覧にリダイレクトする
    redirect_to goals_path if user_signed_in?
  end
end
