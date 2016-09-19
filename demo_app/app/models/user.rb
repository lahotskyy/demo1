class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, length: { maximum: 15 },
                   presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :age, numericality: { greater_than: 16,
                                  message: 'You cann\'t be here' }
  validates :password, length: { in: 7..14 },
                       presence: true,
                       confirmation: true
  validates :sex, inclusion: { in: %w(male female other) }
  has_secure_password
end
