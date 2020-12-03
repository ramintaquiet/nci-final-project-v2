class CreateFavoritepets < ActiveRecord::Migration[6.0]
  def change
    create_table :favoritepets do |t|
      t.references :petprofile, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
