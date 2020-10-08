# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  has_one_attached :image
  
  validates :name, presence: true
  validates :image, content_type: { in: %w[image/jpeg image/gif image/png ] }

  
  acts_as_paranoid
  searchkick
end
