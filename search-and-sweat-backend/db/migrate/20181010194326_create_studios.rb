class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.integer :zip_code
      t.string :phone
      t.string :image
      t.string :website
      t.string :hours
      t.string :promos
      t.belongs_to :admin, foreign_key: true

      t.timestamps
    end
  end
end
