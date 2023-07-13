class UpdateItemsAgain < ActiveRecord::Migration[7.0]
  def change
    add_index :items, :pokemon_id
  end
end
