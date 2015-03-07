class Question < ActiveRecord::Base
  has_many :profiles
  has_many :users, through: :profiles
  has_many :companies, through: :profiles, foreign_key: 'user_id'
end
