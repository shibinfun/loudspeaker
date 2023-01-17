class Mall < ApplicationRecord
belongs_to :mall_category, :optional => true
end
