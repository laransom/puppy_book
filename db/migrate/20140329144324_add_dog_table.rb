class AddDogTable < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
    t.string :dog_name, null: false
    t.string :breed

    t.timestamps
    end
  end
end
