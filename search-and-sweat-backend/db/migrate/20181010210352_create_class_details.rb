class CreateClassDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :class_details do |t|
    	t.string :instructor
    	t.datetime :time

      t.timestamps
    end
  end
end
