class SessionsController < ApplicationController
  def redirect
    provider_response = request.env['omniauth.auth']
    student =  Student.new
    student.name = provider_response['info']['name']
    studente.email = provider_response['info']['email']
    if student.save
      redirect_to search_show_path
    else
      ### Error handeling
  end
end
