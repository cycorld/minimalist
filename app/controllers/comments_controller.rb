class CommentsController < ApplicationController
  def create
    stuff = Stuff.find(params[:stuff_id])
    @comment = stuff.comments.new(comment_params)
    @comment.stuff_id = stuff.id
    @comment.user_id = current_user.id
    @comment.save
    redirect_to garrage_stuff_path(stuff.garrage, stuff)
   # @comment.update_attributes(:user_id => currnet_user.id, :stuff_id => )
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id, :stuff_id, :message)
    end
end
