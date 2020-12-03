class CreateMyfavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :myfavorites do |t|
      t.references :petprofile, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
