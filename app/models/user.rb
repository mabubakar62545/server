# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  require 'securerandom'

  validates :email, presence: true
  validates :password, presence: true
    # rubocop:disable all"
    validates :username, presence: true, uniqueness: true
    # rubocop:enable all
end
