class UpdateItems < ActiveRecord::Migration[7.0]
  def change
    remove_index :items, :pokemon_id
  end
end
