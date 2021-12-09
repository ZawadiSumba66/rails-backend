class Tip < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favoritors, through: :favorites, source: :user
  belongs_to :user
  validates_presence_of :title, :description, :benefits, :instructions
  has_one_attached :image
  def self.image_url(image)
    if image.attached?
      image.blob.url
    end
  end
end
