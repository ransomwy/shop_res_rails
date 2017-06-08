class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :renter, foreign_key: true
      t.belongs_to :bike, foreign_key: true

      t.timestamps
    end
  end
end
