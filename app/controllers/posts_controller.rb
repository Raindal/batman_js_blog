class PostsController < ApplicationController
  respond_to :json

  def index
    respond_with Post.all
  end

  def show
    respond_with Post.find(params[:id]), include: :comments
  end

  def create
    respond_with Post.create(post_params)
  end

  def update
    post = Post.find(params[:id])
    post.update_attributes(post_params)
    respond_with post
  end

  def destroy
    respond_with Post.find(params[:id]).destroy
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end