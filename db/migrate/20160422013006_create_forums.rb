class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :title
      t.string :author
      t.text :entry

      t.timestamps null: false
    end
  end
end
