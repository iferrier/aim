class SelectionsController < ApplicationController
  def create
    @selection = Selection.new
    @selection.user = current_user
    @selection.campaign = Campaign.find(params[:campaign_id])
    if @selection.save
      redirect_to campaigns_path
    else
      redirect_to root_path
    end
    authorize @selection
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @user = current_user
    @selection = Selection.find_by(user: @user, campaign: @campaign)
    if @selection.destroy
      redirect_to campaigns_path
    else
      redirect_to root_path
    end
    authorize @selection
  end
end
