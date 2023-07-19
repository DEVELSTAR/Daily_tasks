class RemoveFeildsFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :name, :string
    remove_column :posts, :date, :date
    remove_column :posts, :time, :time
  end
end
