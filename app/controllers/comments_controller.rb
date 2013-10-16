class CommentsController < ApplicationController
  respond_to :json

  def create
    post = Post.find(params[:post_id])
    comment = post.comments.build(comment_params)
    comment.save
    respond_with(post, comment)
  end

  def destroy
    comment = Comment.find(params[:id])
    respond_with(comment.post, comment.destroy)
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end
end