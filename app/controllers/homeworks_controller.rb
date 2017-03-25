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
    @homework = Homework.find(params[:id])
    @homework.answers << Answer.new(content: params[:answer])
    
    if @homework.save
      redirect_to homeworks_url, notice: 'Homework submitted'
    else
      render :new
    end
  end  
end
