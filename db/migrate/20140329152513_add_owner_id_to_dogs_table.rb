class AddOwnerIdToDogsTable < ActiveRecord::Migration
  def change
    add_column :dogs, :owner_id, :integer, null: false
  end
end
