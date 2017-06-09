class CreateRenters < ActiveRecord::Migration[5.1]
  def change
    create_table :renters do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :phone, null: false

      t.timestamps
    end
  end
end
