class HomeController < ApplicationController
  def show
    if session[:user_id]
      render text: "Hi"
    else
      render text: "Bye"
    end
  end
end
