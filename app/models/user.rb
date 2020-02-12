class User < ApplicationRecord
  validates :name, presence: true,
                   length: { minmum: 1, maximum: 15 }
  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
                    
  has_secure_password  
  validates :password, presence: true,
                       lenght: 8..32,
                       format: { with: /\A[a-zA-Z0-9]+\z/ }
  
end
