class Comment < ApplicationRecord
  # 他のコード
  belongs_to :user
  belongs_to :prototype
  validates :content, presence: true
end