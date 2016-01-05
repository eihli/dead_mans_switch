class FacebookPostsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:new]

  def show
  end

  def new
    @facebook_post = FacebookPost.new
  end

  def create
    puts "Token: " + session[:token]
    @graph = Koala::Facebook::API.new(session[:token])
    profile = @graph.get_object("me")
    @graph.put_connections("me", "feed", message: "I am writing on my wall!")
    render json: profile
  end
end
