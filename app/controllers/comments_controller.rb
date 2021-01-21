class CommentsController < ApplicationController

  def create
    comment=Comment.create(comment_params)
    redirect_to "/onepayments/#{comment.onepayment.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id:current_user.id, onepayment_id:params[:onepayment_id])
  end

end
