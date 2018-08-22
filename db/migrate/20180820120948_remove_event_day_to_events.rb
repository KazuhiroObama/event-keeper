class RemoveEventDayToEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :event_day, :string
  end
end
