class CreateStoreLists < ActiveRecord::Migration[6.0]
  def change
    create_table :store_lists do |t|
      t.string :name
      t.boolean :open
      t.integer :employees

      t.timestamps
    end
  end
end
