# frozen_string_literal: true

3.times do |_n|
  user = User.new(
    email: Faker::Internet.unique.email,
    password: 123_456,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    role: '学生'
  )
  user.skip_confirmation!
  user.save!
end
