class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :suggestion
  acts_as_votable

  has_many :comment_votes, dependent: :destroy
  validates :content, presence: true
end
