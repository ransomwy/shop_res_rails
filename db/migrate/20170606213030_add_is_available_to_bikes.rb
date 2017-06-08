class AddIsAvailableToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :is_available, :boolean, default: :true
  end
end
