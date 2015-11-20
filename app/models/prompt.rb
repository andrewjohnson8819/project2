class Prompt < ActiveRecord::Base
  default_scope { order('created_at DESC') }
  has_many :chapters
  belongs_to :user
end
