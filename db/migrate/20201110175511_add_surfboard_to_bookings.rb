class AddSurfboardToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :surfboard, null: false, foreign_key: true
  end
end
