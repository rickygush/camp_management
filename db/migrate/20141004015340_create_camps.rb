class CreateCamps < ActiveRecord::Migration
  def change
    create_table :camps do |t|
      t.string :name
      t.string :theme
      t.date :start_date
      t.date :end_date
      t.string :speaker

      t.timestamps
    end
  end
end
