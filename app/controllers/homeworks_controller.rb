class HomeworksController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    if @user.student?
      @homeworks = @user.homeworks
    else
      @homeworks = Homework.all
    end
  end

  def show
    @homework = Homework.find(params[:id])
    @user = User.find(session[:user_id])
    
    if @user.teacher?
      @users = User.where(teacher: false)
    end
  end
  
  def create
    @assignment = Assignment.get(params[:id], session[:user_id])
    @assignment.submissions << Submission.new(answer: params[:answer])
    
    if @assignment.save
      redirect_to homeworks_url, notice: 'Homework submitted'
    else
      render :new
    end
  end  
  
  def submission
    @homework = Homework.find(params[:homework_id])
    @user = User.find(params[:user_id])
    @assignment = Assignment.get(params[:homework_id], params[:user_id])
    
    if @assignment
      @submissions = @assignment.submissions
    else
      @submissions = []
    end
  end
end