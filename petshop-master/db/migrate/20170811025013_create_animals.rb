class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :Species
      t.string :Breed
      t.integer :Price
      t.string :Status

      t.timestamps
    end
  end
end
