class SelectionsController < ApplicationController
  def create
    @selection = Selection.new
    @selection.user = current_user
    @selection.campaign = Campaign.find(params[:campaign_id])
    redirect_to campaign_path(@selection.campaign)
    if @selection.save && @selection.campaign.live
      flash[:notice] = "Thanks for joining - the campaign is now live!"
    elsif @selection.save
      flash[:notice] = "Thanks for joining! Only #{5 - @selection.campaign.users.count} people missing for the campaign to go live"
    else
      flash[:alert] = "You already joined!"
    end
    authorize @selection
    toggle_live_status
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
    toggle_live_status
  end

  private

  def redirect_to_same
    redirect_back(fallback_location: "/")
  end

  def toggle_live_status
    if @selection.campaign.users.count >= 5
      @selection.campaign.live = true
      @selection.campaign.save
    else
      @selection.campaign.live = false
      @selection.campaign.save
    end
  end
end
