class Favorite < ActiveRecord::Base
  belongs_to :prompt
  belongs_to :user
end
