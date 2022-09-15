class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "User" #フォローする人
  belongs_to :followed, class_name: "User" #フォローされる人

  validates :follower_id, presence: true
  validates :followed_id,  presence: true
end
