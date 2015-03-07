class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def setup
    if request.post?
      company_name = params['company_name']
      (0..4).each do |i|
        profile = Profile.new
        profile.question_id = params["profile#{i}"]['question_id']
        profile.rank = params["profile#{i}"]['rank']
        profile.importance= params["profile#{i}"]['importance']
        profile.ideal= params["profile#{i}"]['ideal']
        profile.company_name = company_name
        current_user.profiles << profile
      end
      redirect_to dashboard_index_path
    else
      @profiles = []
      Question.first(5).each do |q|
        profile = Profile.new
        profile.question = q
        @profiles << profile
      end
    end
  end

end