class ContentTypeController < ApplicationController


	def create_form
		puts "start-----------------------------"
    	@@start = 1
    	puts @@start
		redirect_to content_type_index_url
	end

	def save_form
		puts "save-----------------------------"
    	@@start = 0
		redirect_to content_type_index_url
	end



	def add_form
	
		

		
			puts "Create Form_information"
			@content_type = ContentType.find_by(id: params[:form_type])

			session[:form_type] = @content_type.contenttype
			session[:form_type_id] = params[:form_type]

			# puts "Save Form_start"
			
			@content_type.form_informations.where(form_type: @content_type.contenttype).destroy_all
			
			# @form = @content_type.form_informations.new()
			# @form.value_type = @content_type.contenttype
			# @form.form_type = @content_type.contenttype
			# @form.save();	
			
			redirect_to content_type_index_url
		
    end

    def add_element
    	@content_type = ContentType.find_by(id: session[:form_type_id])

    	puts session[:form_type]
    	puts session[:element_type]

     	@form = @content_type.form_informations.new()
			@form.form_type = session[:form_type]
			@form.value_type = params[:value_type]
			@form.element_type = params[:element_type]
			@form.label = params[:label]
			@form.save()	

		
    	redirect_to content_type_index_url
    end

    def index
    
    	@content_type = ContentType.find_by(id: 1)
    	session[:form_type_id] = @content_type.id
    	session[:form_type] = @content_type.contenttype

    	@forms = @content_type.form_informations.where(form_type: session[:form_type])
      @content_types = ContentType.all 
    end

    def edit
    	@form = FormInformation.find_by(id: params[:id])
    	
    end
    def update_label
    	
		# puts params[:element_id]
		# @content_type = ContentType.find_by(id: session[:form_type_id])
		# @form = @content_type.form_informations.find_by(id: params[:element_id])
		# @form.label = params[:label]
		# @form.update(params[:label])
    redirect_to content_type_index_url
    end

    
   	

end
