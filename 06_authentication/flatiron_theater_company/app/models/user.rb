class User < ApplicationRecord
    has_many :tickets
    has_many :productions, through: :tickets

    has_secure_password
    validates :password, confirmation: true
    validates :password_confirmation, presence: true
end
