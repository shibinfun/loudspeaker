class CreateForeigns < ActiveRecord::Migration[5.2]
  def change
    create_table :foreigns do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
