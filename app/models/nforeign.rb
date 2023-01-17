class Nforeign < ApplicationRecord
  belongs_to :foreign_category, :optional => true
end
