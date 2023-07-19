class RemoveIndicesFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_index :posts, name: "index_posts_on_date"
    remove_index :posts, name: "index_posts_on_time"
  end
end
