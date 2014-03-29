class ChangeDogNameColumnToDog < ActiveRecord::Migration
  def up
    remove_column :owners, :dog_name
    add_column :owners, :dog, :string
  end

  def down
    add_column :owners, :dog_name, :string
    remove_column :owners, :dog

  end
end
