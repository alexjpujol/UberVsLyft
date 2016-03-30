class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.float :start_latitude
      t.float :start_longitude
      t.float :end_latitude
      t.float :end_longitude

      t.timestamps null: false
    end
  end
end
