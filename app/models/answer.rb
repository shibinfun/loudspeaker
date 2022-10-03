class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :ask
  validates :content, presence: true


end
