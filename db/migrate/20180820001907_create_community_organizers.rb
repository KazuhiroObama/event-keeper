class CreateCommunityOrganizers < ActiveRecord::Migration[5.1]
  def change
    create_table :community_organizers do |t|
      t.integer :community_id
      t.integer :organizer_id

      t.timestamps
    end
  end
end
