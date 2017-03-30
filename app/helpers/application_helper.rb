module ApplicationHelper
  def logged_in_user
    user = User.find_by(id: session[:user_id])
    if user
      user.name
    else
      ''
    end
  end
  
  def recent_answer(homework_id, user_id)
    answer = ''
    assignment = Assignment.where(homework_id: homework_id).where(user_id: user_id).first
    answer = if assignment
      recent_submission = assignment.submissions.last
      if recent_submission
        recent_submission.answer
      end
    end
  end
end
