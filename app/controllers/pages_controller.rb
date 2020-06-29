class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @flats = Flat.all
  end

  def account
    @user = User.find(current_user.id)
  end

  def profile
    @user = User.find(current_user.id)
  end

  def bookings
    @user = User.find(current_user.id)
  end
end
