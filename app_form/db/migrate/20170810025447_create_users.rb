class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthdate
      t.string :address
      t.integer :telephone
      t.string :city
      t.string :state
      t.integer :zip
      t.string :apply
      t.string :hire
      t.string :pjob

      t.timestamps
    end
  end
end
