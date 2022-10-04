class CreateQqgroups < ActiveRecord::Migration[5.0]
  def change
    create_table :qqgroups do |t|
      t.text :content

      t.timestamps
    end
  end
end
