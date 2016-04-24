class AddValueToCommunity < ActiveRecord::Migration
  def change
    add_column :communities, :game_id, :integer
  end
end
