class Medicine < ApplicationRecord
	has_and_belongs_to_many :bills, dependent: :destroy
end
