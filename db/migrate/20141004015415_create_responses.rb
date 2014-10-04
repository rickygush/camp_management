class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :attendee_id
      t.integer :camp_id
      t.string :response

      t.timestamps
    end
  end
end
