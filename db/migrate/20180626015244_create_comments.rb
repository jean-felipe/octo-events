class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :url
      t.string :uuid
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
