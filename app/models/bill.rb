class Bill < ApplicationRecord
	belongs_to :patient, optional: true
	has_and_belongs_to_many :medicines, dependent: :destroy
end
