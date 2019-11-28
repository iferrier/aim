class CommentsController < ApplicationController
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @comment = Comment.new
    @comment.user = current_user
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @comment = Comment.new(comment_params)
    @comment.campaign = @campaign
    @comment.user = current_user
    authorize @comment
    if @comment.save
      redirect_to campaign_path(@campaign)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
