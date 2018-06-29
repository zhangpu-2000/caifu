class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :article
      t.string :user_avatar
      t.string :user_name
      t.text :content
      t.datetime :created_at
    end
  end
end
