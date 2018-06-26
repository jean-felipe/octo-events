class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :action
      t.integer :comment_id
      t.integer :issue_id

      t.timestamps
    end
  end
end
