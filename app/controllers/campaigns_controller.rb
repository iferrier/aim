class CampaignsController < ApplicationController
  def index
    @campaigns = policy_scope(Campaign)
    @featured_campaign = Campaign.find_by organisation: 'Fridays for Future'
  end
end
