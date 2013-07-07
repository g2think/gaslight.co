class AddTumblrIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tumblr_id, :bigint, unique: true
    add_index :posts, :tumblr_id
  end
end
