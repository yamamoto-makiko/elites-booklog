class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :category_name

      t.timestamps null: false
    end
  end
end
