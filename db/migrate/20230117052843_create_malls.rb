class CreateMalls < ActiveRecord::Migration[5.2]
  def change
    create_table :malls do |t|
      t.string :title
      t.text :description
      t.string :link

      t.timestamps
    end
    add_column :malls, :mall_category_id, :integer
    add_index :malls, :mall_category_id
  end
end
