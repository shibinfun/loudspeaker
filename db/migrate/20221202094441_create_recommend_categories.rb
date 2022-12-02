class CreateRecommendCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :recommend_categories do |t|
      t.string :name

      t.timestamps
    end
    add_column :recommends, :recommend_category_id, :integer
    add_index :recommends, :recommend_category_id
  end
end
