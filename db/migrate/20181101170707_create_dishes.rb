class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :image
      t.string :description
      t.integer :course_id
      t.float :price, default: 0.0

      t.timestamps
    end
  end
end
