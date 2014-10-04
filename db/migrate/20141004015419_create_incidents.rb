class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.integer :attendee_id
      t.integer :camp_id
      t.string :incident

      t.timestamps
    end
  end
end
