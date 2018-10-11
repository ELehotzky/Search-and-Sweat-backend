class CreateFitnessClassDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :fitness_class_details do |t|

      t.belongs_to :fitness_class, foreign_key: true
	  t.belongs_to :class_detail, foreign_key: true

      t.timestamps
    end
  end
end
