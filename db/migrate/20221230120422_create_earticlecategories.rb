class CreateEarticlecategories < ActiveRecord::Migration[5.2]
  def change
    create_table :earticlecategories do |t|
      t.string :name

      t.timestamps
    end

    add_column :earticles, :earticlecategory_id, :integer
 add_index :earticles, :earticlecategory_id
  end
end
