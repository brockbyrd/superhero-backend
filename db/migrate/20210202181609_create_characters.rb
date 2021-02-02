class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :intelligence
      t.integer :strength
      t.integer :speed
      t.integer :durability
      t.integer :power
      t.integer :combat
      t.string :race
      t.string :gender
      t.string :height
      t.string :weight
      t.string :fullName
      t.string :alignment
      t.string :occupation
      t.string :groups
      t.string :universe
      t.string :image1
      t.string :image2

      t.timestamps
    end
  end
end
