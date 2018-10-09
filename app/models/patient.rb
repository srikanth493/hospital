class Patient < ApplicationRecord
	has_many :bills, dependent: :destroy
	has_many :appointements, dependent: :destroy
	has_many :physicans ,through: :appointements, dependent: :destroy
end
