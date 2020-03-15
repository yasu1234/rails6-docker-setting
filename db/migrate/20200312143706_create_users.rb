class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: false do |t|
      t.integer :id, 'INTEGER PRIMARY KEY AUTO_INCREMENT'
      t.string :userId
      t.string :password

      t.timestamps
    end
  end
end
