class CreateMerches < ActiveRecord::Migration
  def change
    create_table :merches do |t|
      t.string :item
      t.decimal :price
      t.string :size

      t.timestamps null: false
    end
  end
end
