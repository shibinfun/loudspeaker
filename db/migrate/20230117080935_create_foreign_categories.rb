class CreateForeignCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :foreign_categories do |t|
      t.string :name

      t.timestamps
    end
    add_column :foreigns, :foreign_category_id, :integer
    add_index :foreigns, :foreign_category_id
  end
  end
