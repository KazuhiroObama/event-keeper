class CreateCommunityMemebers < ActiveRecord::Migration[5.1]
  def change
    create_table :community_memebers do |t|
      t.integer :community_id
      t.integer :member_id

      t.timestamps
    end
  end
end
