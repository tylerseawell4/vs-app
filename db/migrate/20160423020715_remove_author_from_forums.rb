class RemoveAuthorFromForums < ActiveRecord::Migration
  def change
    remove_column :forums, :author, :string
  end
end
