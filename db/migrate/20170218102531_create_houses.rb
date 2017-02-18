class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.integer :region
      t.integer :position
      t.integer :character_id
      t.integer :level

      t.timestamps
    end
  end
end
