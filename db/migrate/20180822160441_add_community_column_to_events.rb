class AddCommunityColumnToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :community, foreign_key: true
  end
end
