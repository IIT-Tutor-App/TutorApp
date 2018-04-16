class SessionsController < ApplicationController
  def redirect
    provider_response = request.env['omniauth.auth']
    student =  Student.new
    student.name = provider_response['info']['name']
    student.email = provider_response['info']['email']
    if student.save
      redirect_to search_path
    else
      ### Error handeling
    end
  end
end
