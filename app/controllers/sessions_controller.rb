class SessionsController < ApplicationController
  def redirect
    @provider_response = request.env['omniauth.auth']
  end
end
