class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :slug, :author, :tags
      t.text :body, :html
      t.boolean :published
      t.timestamp :published_at
      t.timestamps
    end

    add_index :posts, :slug
  end
end
