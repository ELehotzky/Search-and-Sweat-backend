class Admin < ApplicationRecord

	has_many :studios

	has_secure_password
	validates :email, uniqueness: {case_sensitive: false}
end
