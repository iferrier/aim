class UsersController < ApplicationController
  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(user_params)
    authorize @user
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def download
    authorize current_user
    @campaign = current_user.campaigns.last
    if @campaign.cause == "Global Warming"
      send_file "#{Rails.root}/app/assets/campaign_materials/climatechange.zip", x_sendfile: true
    elsif @campaign.cause == "LGBTQ"
      send_file "#{Rails.root}/app/assets/campaign_materials/LGBTQ.zip", x_sendfile: true
    else
      send_file "#{Rails.root}/app/assets/campaign_materials/fundraiser.zip", x_sendfile: true
    end
  end

  private

  def user_params
    params.require(:user).permit(:picture, :name, :instagram, :location, :bio, :email)
  end
end
