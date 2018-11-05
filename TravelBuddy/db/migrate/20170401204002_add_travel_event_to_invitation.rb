class AddTravelEventToInvitation < ActiveRecord::Migration[5.0]
  def change
    add_reference :invitations, :travel_event, foreign_key: true
  end
end
