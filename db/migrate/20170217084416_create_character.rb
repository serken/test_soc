class CreateCharacter < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.integer :user_id, null: false
      t.string :name, null: false, index: true
      t.float :money, null: false, default: 0.0
      t.integer :level, null: false, default: 1

      t.timestamps
    end
  end
end
