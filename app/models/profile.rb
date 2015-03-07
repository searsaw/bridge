class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :company, foreign_key: 'user_id'
  belongs_to :question
end