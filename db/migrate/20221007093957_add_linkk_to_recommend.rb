class AddLinkkToRecommend < ActiveRecord::Migration[5.0]
  def change
    add_column :recommends,:linkk,:string 
  end
end
