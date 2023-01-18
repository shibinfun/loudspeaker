class AddNumberToSeos < ActiveRecord::Migration[5.2]
  def change
    add_column :seos,:mobile1,:string
add_column :seos,:mobile2,:string
  end
end
