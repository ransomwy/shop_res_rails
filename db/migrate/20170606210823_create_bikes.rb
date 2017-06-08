class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :bike_type, null: false
      t.string :bike_size, null: false
      t.string :pedal_type, null: false

      t.timestamps
    end
  end
end
