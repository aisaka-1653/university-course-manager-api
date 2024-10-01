# frozen_string_literal: true

module Courses
  module Index
    class CourseSerializer < ActiveModel::Serializer
      attributes %i[id name description]
    end
  end
end
