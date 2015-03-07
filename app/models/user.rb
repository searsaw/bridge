class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  has_many :profiles
  has_many :questions, through: :profiles

  def company_matches
    # companies = Company.all
    # companies.each do |c|
    #   c.user_comparison = questions.all.inject(0) do |sum, q|
    #     user_profile = profiles.find_by question_id: q.id
    #     comp_profile = c.profiles.find_by question_id: q.id
    #
    #     if user_profile && comp_profile
    #       user_answer = user_profile.ideal * user_profile.importance
    #       comp_answer = comp_profile.ideal * comp_profile.importance
    #       sum + (user_answer - comp_answer).abs / 100.0 * 0.2
    #     else
    #       0
    #     end
    #   end
    # end
    # companies.sort { |a, b| a.user_comparison <=> b.user_comparison }

    Company.all.sort { |a,b| b.percentage <=> a.percentage }
  end
end
