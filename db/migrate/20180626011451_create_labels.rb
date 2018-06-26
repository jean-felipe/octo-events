class CreateLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :labels do |t|
      t.integer :uuid
      t.string :node_id
      t.string :url
      t.string :name
      t.string :color
      t.boolean :default

      t.timestamps
    end
  end
end
