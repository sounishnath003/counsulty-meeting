class Comment < ApplicationRecord
  validates :reply, presence: true
  belongs_to :meeting
  belongs_to :user
end
