class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']

    if session[:user_id]
      render json: auth_hash
    else
      session[:user_id] = auth_hash['uid']
      session[:token] = auth_hash['credentials']['token']
      puts auth_hash['credentials']
      puts auth_hash['credentials']['token']
      render :text => "Welcome #{auth_hash['info']['name']}"
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
