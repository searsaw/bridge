class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  has_many :profiles
  has_many :questions, through: :profiles

  def company_matches
    companies = Company.all
    companies.each do |c|
      c.total = c.profiles.inject(0) { |sum, p| sum + p.ideal * p.importance }
    end

    companies.sort { |a, b| (a.total - total) <=> (b.total - total) }
  end

  def total
    @total ||= profiles.inject(0) { |sum, p| sum + p.ideal * p.importance }
  end
end
