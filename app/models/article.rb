class Article < ApplicationRecord
validates :title, presence: true
belongs_to :article_category, :optional => true
end
