# frozen_string_literal: true

class Tip < ApplicationRecord
  has_many :favorites
  has_many :favoritors, through: :favorites, source: :user
  belongs_to :user
  validates_presence_of :title, :description, :benefits, :instructions
end
