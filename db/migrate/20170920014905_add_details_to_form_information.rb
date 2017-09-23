class AddDetailsToFormInformation < ActiveRecord::Migration[5.1]
  def change
    add_column :form_informations, :value_type, :string
    add_column :form_informations, :value_string, :string
    add_column :form_informations, :value_integer, :integer
    add_column :form_informations, :value_array, :string
    add_column :form_informations, :element_type, :string
    add_column :form_informations, :label, :string
    add_column :form_informations, :multi, :boolean
    add_column :form_informations, :form_type, :string
  end
end
