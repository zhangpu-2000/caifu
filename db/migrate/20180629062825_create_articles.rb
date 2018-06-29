class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :page_count
      t.integer :comment_count
      t.datetime :created_at
    end
  end
end
