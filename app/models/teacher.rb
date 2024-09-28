# frozen_string_literal: true

class Teacher < ApplicationRecord
  belongs_to :user
  has_many :teacher_courses, dependent: :destroy
  has_many :courses, through: :teacher_courses
end
