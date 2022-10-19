class CreateArticleCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :article_categories do |t|
      t.string :name

      t.timestamps
    end
add_column :articles, :article_category_id, :integer
add_index :articles, :article_category_id

  end
end
