class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :address
      t.string :allergies
      t.string :church
      t.string :diet_requirements
      t.date :dob
      t.string :e_email
      t.integer :e_h_phone
      t.integer :e_m_phone
      t.string :e_name
      t.string :e_relationship
      t.integer :e_w_phone
      t.string :f_name
      t.string :g_email
      t.integer :g_h_phone
      t.integer :g_m_phone
      t.string :g_name
      t.integer :g_w_phone
      t.string :gender
      t.string :l_name
      t.string :medication
      t.string :notes
      t.boolean :panadol
      t.string :role
      t.string :school

      t.timestamps
    end
  end
end
