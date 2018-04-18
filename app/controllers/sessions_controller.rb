class SessionsController < ApplicationController
  def redirect
    provider_response = request.env['omniauth.auth']
    student =  Student.new
    student.name = provider_response['info']['name']
    student.email = provider_response['info']['email']
    if Student.where(email: student.email).exists?
      self.current_user = student
      redirect_to search_path
    else
      if student.save
        self.current_user = student
        redirect_to search_path
      else
        ### Error handeling
      end
    end
  end
  
  def logout
    reset_session
    redirect_to root_url
  end
end
