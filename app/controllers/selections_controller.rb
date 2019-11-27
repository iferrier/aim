class SelectionsController < ApplicationController

  def create
    @selection = Selection.new
    @selection.user = current_user
    @selection.campaign = Campaign.find(params[:campaign_id])
    authorize @selection
    @selection.save!
  end
end
