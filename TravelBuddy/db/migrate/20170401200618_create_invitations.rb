class CreateInvitations < ActiveRecord::Migration[5.0]
  def change
    create_table :invitations do |t|
      t.string :from
      t.string :description

      t.timestamps
    end
  end
end
