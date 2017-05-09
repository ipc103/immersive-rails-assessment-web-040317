class WelcomeController < ApplicationController

  def index
    @guest = Guest.top_guests
  end
end
