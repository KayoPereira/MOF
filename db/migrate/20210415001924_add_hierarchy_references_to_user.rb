class AddHierarchyReferencesToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :hierarchy, null: false, foreign_key: true
  end
end
