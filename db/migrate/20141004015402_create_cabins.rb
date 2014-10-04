class CreateCabins < ActiveRecord::Migration
  def change
    create_table :cabins do |t|
      t.string :name
      t.integer :beds

      t.timestamps
    end
  end
end
