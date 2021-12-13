class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ } 
    validates :password, presence: true, length: {minimum: 8}
    validates :confirm_password, presence: true
    validates :user_type, presence: true
    validates :status, presence: true
end


