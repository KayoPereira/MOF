class CreateResponsables < ActiveRecord::Migration[6.0]
  def change
    create_table :responsables do |t|
      t.references :user
      t.references :olympic

      t.timestamps
    end
  end
end
