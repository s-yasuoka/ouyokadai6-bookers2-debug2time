class Favorite < ApplicationRecord
  belongs_to :book
  belongs_to :user
  # 一人が一つの投稿に対して1つのいいねしかできないように
  validates_uniqueness_of :book_id, scope: :user_id
end
