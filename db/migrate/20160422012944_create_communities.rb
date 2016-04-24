class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :activity
      t.string :gamertag
      t.text :description

      t.timestamps null: false
    end
  end
end
