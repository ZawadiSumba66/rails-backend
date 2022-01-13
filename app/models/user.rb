class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tips
  has_many :favorites
  has_many :favorited_tips, through: :favorites, source: :tip
  validates :username, presence: true, uniqueness: true, length: { in: 4..20 }
  validates :email, presence: true, uniqueness: true
  has_one_attached :avatar

  def self.avatar_url(avatar)
    if avatar.attached?
      avatar.blob.url
    end
  end
end
