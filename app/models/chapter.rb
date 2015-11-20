class Chapter < ActiveRecord::Base
  default_scope { order('created_at ASC') }
  belongs_to :prompt
  belongs_to :user
end
