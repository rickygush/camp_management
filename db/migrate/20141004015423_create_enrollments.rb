class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :attendee_id
      t.integer :camp_id
      t.integer :cabin_id
      t.string :payment_method
      t.integer :charge
      t.integer :paid
      t.string :pick_up
      t.string :notes

      t.timestamps
    end
  end
end
