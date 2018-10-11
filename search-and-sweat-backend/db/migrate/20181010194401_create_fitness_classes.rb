class CreateFitnessClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :fitness_classes do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :class_length
      t.integer :price
      t.belongs_to :studio, foreign_key: true

      t.timestamps
    end
  end
end
