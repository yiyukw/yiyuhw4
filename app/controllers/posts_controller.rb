class PostsController < ApplicationController


  def create
    if @current_user
      @post = Post.new(params["post"])
      @post.user_id = @current_user.id
      @post.save
    else
      flash[:notice] = "Please login"
    end
      redirect_to "/places/#{@post.place.id}"
  end

end
