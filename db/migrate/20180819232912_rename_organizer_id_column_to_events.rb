class RenameOrganizerIdColumnToEvents < ActiveRecord::Migration[5.1]
  def change
    rename_column :events, :organizer_id, :community_id
  end
end
