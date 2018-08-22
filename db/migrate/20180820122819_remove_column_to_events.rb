class RemoveColumnToEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :open_time, :string
    remove_column :events, :close_time, :string
    remove_column :events, :receptionist, :string
  end
end
