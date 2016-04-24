class AddValueToComments < ActiveRecord::Migration
  def change
    add_column :comments, :forum_id, :integer
  end
end
