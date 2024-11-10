class User < ApplicationRecord
    require "securerandom"

    has_ secure password
    
    validates email, presence: true 
    validates :password, presence: true
    validates :username, presence: true, uniqueness: true

end
