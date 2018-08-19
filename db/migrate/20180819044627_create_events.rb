class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.string :image
      t.date :event_day
      t.time :open_time
      t.time :close_time
      t.integer :maximum_number_of_people
      t.datetime :deadline_of_participant_for_event
      t.integer :receptionist
      t.integer :organizer_id

      t.timestamps
    end
  end
end
