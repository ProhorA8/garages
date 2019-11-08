# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, :name, presence: true
  validates :email, uniqueness: true, email_format: true
  validates :password, confirmation: true, length: {minimum: 4}
  attr_accessor :password, :password_confirmation
end
