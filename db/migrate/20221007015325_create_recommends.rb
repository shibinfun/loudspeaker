class CreateRecommends < ActiveRecord::Migration[5.0]
  def change
    create_table :recommends do |t|
      t.string :title

      t.timestamps
    end
  end
end
