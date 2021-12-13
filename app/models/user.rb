class User < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}
    validates :email, presence: true
    validates :user_type, presence: true
    validates :status, presence: true
end
