class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :department
      t.boolean :on_vacation

      t.timestamps
    end
  end
end
