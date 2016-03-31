class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitidue
      t.float :longitude

      t.timestamps null: false
    end
  end
end
