class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_many :profiles, foreign_key: 'user_id'
  has_many :questions, through: :profiles, foreign_key: 'user_id'
end
