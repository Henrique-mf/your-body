class CreateShoots < ActiveRecord::Migration[7.0]
  def change
    create_table :shoots do |t|
      t.string :description
      t.string :links
      t.string :city
      t.string :state
      t.string :shooting_type
      t.boolean :female_photgrapher
      t.integer :owner_id
      t.integer :review_id

      t.timestamps
    end
  end
end
