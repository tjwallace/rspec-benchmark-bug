class PostsController < ApplicationController
  def show
    render json: Post.find(params[:id])
  end
end
