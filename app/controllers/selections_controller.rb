class SelectionsController < ApplicationController
  def create
    @selection = Selection.new
    @selection.user = current_user
    @selection.campaign = Campaign.find(params[:campaign_id])
    redirect_to campaign_path(@selection.campaign)
    if @selection.save
      flash[:notice] = "Thanks for joining!"
    else
      flash[:alert] = "You already joined!"
    end
    authorize @selection
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @user = current_user
    @selection = Selection.find_by(user: @user, campaign: @campaign)
    redirect_to_same
    if @selection.destroy
      flash[:notice] = "Successfully removed!"
    else
      flash[:alert] = "Whoops - something went wrong!"
    end
    authorize @selection
  end

  private

  def redirect_to_same
    redirect_back(fallback_location: "/")
  end
end
