class Prompt < ActiveRecord::Base
  default_scope { order('created_at DESC') }

  has_many :chapters
  belongs_to :user
  validates_presence_of :title, :body

  has_many :favorites
  has_many :favorited_by, through: :favorites, source: :user
end
