class CampaignsController < ApplicationController
  def new
    @campaign = Campaign.new
    authorize @campaign
  end

  def create
    @campaign = Campaign.new(campaign_params)
    authorize @campaign
    if @campaign.save
      redirect_to campaign_path(@campaign)
    else
      render :new
    end
  end

  def index
    @campaigns = policy_scope(Campaign)
  end

  def show
    set_campaign
  end

  private

  def set_campaign
    @campaign = Campaign.find(params[:id])
    authorize @campaign
  end

  def campaign_params
    params.require(:campaign)
          .permit(:title, :campaign_description, :cause, :campaign_picture,
                  :location, :organisation, :launch_date, :live, :brand_logo)
  end
end
