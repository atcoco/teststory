class FormInformation < ApplicationRecord
	belongs_to :content_type, required: false
	has_many :multiple_items, dependent: :destroy
end
