class AddColumnToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :opening_time, :datetime
    add_column :events, :ending_time, :datetime
    add_column :events, :receptionist, :boolean
    add_column :events, :event_day, :date
    add_column :events, :beginig_of_the_event_day, :boolean
  end
end
