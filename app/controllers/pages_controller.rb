class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
    @my_bookings = @user.bookings
    @my_boards = @user.surfboards
    @bookings_on_my_boards = @user.board_bookings
  end

end
