class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :login
      t.string :uuid
      t.string :type
      t.string :avatar_url

      t.timestamps
    end
  end
end
