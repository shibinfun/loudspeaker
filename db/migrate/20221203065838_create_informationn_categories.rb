class CreateInformationnCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :informationn_categories do |t|
      t.string :name

      t.timestamps
    end
    add_column :informationns, :informationn_category_id, :integer
    add_index :informationns, :informationn_category_id
  end
end
