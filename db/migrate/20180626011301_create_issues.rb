class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :url
      t.string :repository_url
      t.string :labels_url
      t.string :comments_url
      t.string :events_url
      t.string :html_url
      t.integer :number
      t.string :uuid
      t.integer :state, default: 0
      t.text :body
      t.integer :comments
      t.integer :user_id

      t.timestamps
    end
  end
end
