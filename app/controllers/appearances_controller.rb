class AppearancesController < ApplicationController
  before_action :authorize_user

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    appearance = Appearance.new(appearance_params)
    if appearance.save
      redirect_to appearance.guest
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
