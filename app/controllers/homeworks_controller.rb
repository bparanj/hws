class HomeworksController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @homeworks = @user.homeworks
  end

  def show
    @homework = Homework.find(params[:id])
  end
  
  def create
    logger.info params
  end
end
