class AddCompletedAtToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :completed_at, :datetime
  end
end
