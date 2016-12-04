class CreateRiders < ActiveRecord::Migration[5.0]
  def change
    create_table :riders do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthdate
      t.string :email
      t.string :phone
      t.string :address
      t.string :apt
      t.string :city
      t.integer :zip
      t.string :school
      t.integer :feet
      t.integer :inches
      t.string :shirt
      t.string :ridebike
      t.string :physical
      t.text :actdesc
      t.text :whyjoin
      t.text :bikeexp
      t.text :athexp
      t.text :goal
      t.references :flyer    

      t.timestamps
    end
  end
end
