class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :math
      t.string :science
      t.string :english
      t.time :time
      t.date :date
      t.string :period

      t.timestamps
    end
  end
end
