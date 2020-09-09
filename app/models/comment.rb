class Comment < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :content, presence: true

  def self.comment
    order(created_at: :desc)
  end
end