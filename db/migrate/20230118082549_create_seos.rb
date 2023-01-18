class CreateSeos < ActiveRecord::Migration[5.2]
  def change
    create_table :seos do |t|
      t.string :number_id
      t.string :title
      t.text :description
      t.string :number1
      t.string :bumber2

      t.timestamps
    end
  end
end
