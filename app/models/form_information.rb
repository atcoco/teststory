class FormInformation < ApplicationRecord
	belongs_to :content_type, required: false
end
