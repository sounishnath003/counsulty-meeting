class Meeting < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  validates :start_time, presence: true
  validates :end_time, presence: true
  
  belongs_to :user
  has_many :comments, dependent: :destroy
end
