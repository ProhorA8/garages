class User < ApplicationRecord

  validates :email, :name, presence: true #вызов автоматом
  validates :email, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP}
    end
