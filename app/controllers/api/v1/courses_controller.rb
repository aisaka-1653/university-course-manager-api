# frozen_string_literal: true

module Api
  module V1
    class CoursesController < ApplicationController
      def index
        courses = Course.where(semester: params[:season])
        render json: courses, each_serializer: Courses::Index::CourseSerializer
      end
    end
  end
end
