# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :timeoutable
  include DeviseTokenAuth::Concerns::User
end
