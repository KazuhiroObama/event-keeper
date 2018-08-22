class RemoveOrganizerIdToEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :organizer_id, :string
  end
end
