class CreateAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table :attendees do |t|
      t.boolean :paid

      t.timestamps
    end
  end
end
