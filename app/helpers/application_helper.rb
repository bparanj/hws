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
    assignment = Assignment.get(homework_id, user_id)
    if assignment
      recent_submission = assignment.submissions.last
      if recent_submission
        answer = recent_submission.answer
      end
    end
    answer
  end
end
