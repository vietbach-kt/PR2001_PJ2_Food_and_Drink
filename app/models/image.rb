# frozen_string_literal: true

class Image < ApplicationRecord
  belongs_to :product
  belongs_to :category

  mount_uploader :link, ImageUploader

  validates :link, presence: true
end
