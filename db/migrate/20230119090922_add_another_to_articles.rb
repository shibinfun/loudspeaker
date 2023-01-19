class AddAnotherToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :flowwater, :string
    add_column :articles, :domainage, :string
    add_column :articles, :rank1, :string
    add_column :articles, :video, :string
    add_column :articles, :wechat, :string
    add_column :articles, :platforms, :string
    add_column :articles, :another, :text
  end
end
