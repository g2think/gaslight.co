class RemoveTumblrIdFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :tumblr_id
  end

  def down
    add_column :posts, :tumblr_id, :bigint, unique: true
    add_index :posts, :tumblr_id
  end
end
