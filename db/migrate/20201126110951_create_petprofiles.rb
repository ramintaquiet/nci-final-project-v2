class CreatePetprofiles < ActiveRecord::Migration[6.0]
  def change
    create_table :petprofiles do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.references :gender, foreign_key: true
      t.string :breed
      t.date :DOB
      t.boolean :pedigree
      t.boolean :vaccinated
      t.boolean :microchipped
      t.boolean :available
      t.references :user, null: false, foreign_key: true
      t.text :about

      t.timestamps
    end
  end
end
