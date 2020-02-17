class User < ApplicationRecord
  validates :name, presence: true,
                   length: { minmum: 1, maximum: 15 }
  validates :email, presence: true,
                    format: { with: /\A\S+@\S+\.\S+\z/ }
                    
  has_secure_password  validations: false
  validates :password, presence: true,
                       length: { minmum: 8, maximum:32 },
                       format: { with: /\A[a-zA-Z0-9]+\z/ }
  
end