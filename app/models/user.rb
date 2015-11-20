class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :prompts
  has_many :chapters
  has_many :favorites
  has_many :favorite, through: :favorites, source: :prompt
end
