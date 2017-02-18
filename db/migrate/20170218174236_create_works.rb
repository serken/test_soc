class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.integer :character_id, null: false
      t.integer :level, null: false, default: 1
    end
  end
end
