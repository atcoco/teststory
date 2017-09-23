class ContentType < ApplicationRecord
	has_many :form_informations, dependent: :destroy
  	
end
