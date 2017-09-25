class FormInformationsController < ApplicationController

	def update_element_label
		puts "update element label"
		 @form = FormInformation.find_by(id: params[:element_id])
		
		 @form.update(label: params[:label])
    	redirect_to content_type_index_url
	end
	def index
		
	end
	

end
