class CreateOlympics < ActiveRecord::Migration[6.0]
  def change
    create_table :olympics do |t|
      t.text :title
      t.text :description
      t.integer :edition
      t.date :start_registration
      t.date :end_registration
      t.text :image

      t.timestamps
    end
  end
end
