class Admin < ApplicationRecord

	has_secure_password
	validates :email, uniqueness: {case_sensitive: false}

	has_many :studios
	
end
