# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, :name, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
