# frozen_string_literal: true

module Users
  module Index
    class UserSerializer < ActiveModel::Serializer
      attributes %i[full_name]

      delegate :full_name, to: :object
    end
  end
end
