# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :timeoutable
  include DeviseTokenAuth::Concerns::User

  has_one :teacher, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
