class UpdateTable < ActiveRecord::Migration[7.0]
  def change
    remove_index :items, :name
  end
end
