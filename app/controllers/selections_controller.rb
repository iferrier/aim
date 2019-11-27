class SelectionsController < ApplicationController
  def create
    @selection = Selection.new
    @selection.user = current_user
    @selection.campaign = Campaign.find(params[:campaign_id])
    if @selection.save
      redirect_to campaign_path(@selection.campaign)
    else
      redirect_to campaigns_path
    end
    authorize @selection
  end
end
