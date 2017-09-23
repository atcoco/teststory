class CreateFormInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :form_informations do |t|
    	t.references :content_type, foreign_key: true

      t.timestamps
    end
  end
end
