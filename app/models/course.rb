# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :teacher_courses, dependent: :destroy
  has_many :teachers, through: :teacher_courses
end
