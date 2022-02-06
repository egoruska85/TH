class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]
  def create
    @service = Service.find(params[:service_id])
    comment = @service.comments.new(comment_params)
    comment.author = current_user.username
    comment.save
    redirect_to service_path(@service)

  end
  private
  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
