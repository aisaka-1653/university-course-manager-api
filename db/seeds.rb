# frozen_string_literal: true

require_relative 'seeds/courses'

student = User.new(
  email: Faker::Internet.unique.email,
  password: 123_456,
  first_name: Faker::Name.last_name,
  last_name: Faker::Name.first_name,
  role: 'student'
)
student.skip_confirmation!
student.save!

10.times do |n|
  ActiveRecord::Base.transaction do
    user = User.new(
      email: Faker::Internet.unique.email,
      password: 123_456,
      first_name: Faker::Name.last_name,
      last_name: Faker::Name.first_name,
      role: 'teacher'
    )
    user.skip_confirmation!
    user.save!

    teacher = user.build_teacher(
      position: 'professor'
    )
    teacher.save!

    course = COURSES[n]
    teacher.courses.create!(
      name: course[:name],
      description: course[:description],
      semester: course[:semester]
    )
  end
end
