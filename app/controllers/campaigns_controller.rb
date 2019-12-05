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
    @featured_campaign = Campaign.last
    @global_warming_campaigns = Campaign.where cause: 'Global Warming'
    @lgbtq_campaigns = Campaign.where cause: 'LGBTQ'
    @fundraisers_campaigns = Campaign.where cause: 'Fundraiser'
    @selection = Selection.new
  end

  def edit
    set_campaign
  end

  def update
    set_campaign
    @campaign.update(campaign_params)
    redirect_to campaign_path(@campaign)
  end


  def show
    set_campaign

    if @campaign.live
      @comment = Comment.new
    end

    @marker = {
      lat: @campaign.latitude,
      lng: @campaign.longitude,
      image_url: helpers.asset_url('yellow-marker.png')
    }
  end

  def download
    @campaign = Campaign.find(params[:id])
    authorize @campaign
    send_file "#{Rails.root}/app/assets/campaign_materials/campaign-material.zip", x_sendfile: true
  end

  def download_last
    @campaign = current_user.selections.last.campaign
    authorize @campaign
    send_file "#{Rails.root}/app/assets/campaign_materials/campaign-material.zip", x_sendfile: true
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
