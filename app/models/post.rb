class Post < ApplicationRecord
  belongs_to :author
  belongs_to :creator
  has_many :post_emojis
  has_many :emojis , through: :post_emojis
end
