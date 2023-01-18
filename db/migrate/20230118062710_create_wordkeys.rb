class CreateWordkeys < ActiveRecord::Migration[5.2]
  def change
    create_table :wordkeys do |t|
      t.string :title
      t.string :description
      t.text :number1
      t.text :number2

      t.timestamps
    end
  end
end
