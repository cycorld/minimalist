class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
   # @comment.update_attributes(:user_id => currnet_user.id, :stuff_id => )
  end

  private
    def garrage_params
      params.require(:comment).permit(:user_id, :stuff_id, :message)
    end
end
