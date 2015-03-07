Question.delete_all
Question.create question: 'How much control do you have over your schedule?', bottom: 'None', top: 'A lot'
Question.create question: 'How much is your reward structure is based on results?', bottom: 'None', top: 'A lot'
Question.create question: 'How autonomous does your company allow you to be?', bottom: 'None', top: 'A lot'
Question.create question: 'How close is your relationship with your coworkers?', bottom: 'None', top: 'A lot'
Question.create question: 'How much does your company inspire you to do good work?', bottom: 'None', top: 'A lot'

Company.delete_all

(1..10).each do
  password = Faker::Internet.password
  company = Company.new(
             email: Faker::Internet.email,
             password: password,
             password_confirmation: password,
             name: Faker::Company.name,
             zip: Faker::Address.zip_code
  )
  company.skip_confirmation!
  company.save
end

companies = Company.all
questions = Question.all

companies.each do |c|

  questions.each do |q|

    rank = rand(100).floor
    importance = rand(100).floor

    c.profiles.create(
      rank: rank,
      importance: importance,
      company_name: '',
      ideal: rank,
      question_id: q.id
    )

  end

end