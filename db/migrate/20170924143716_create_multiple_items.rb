class CreateMultipleItems < ActiveRecord::Migration[5.1]
  def change
    create_table :multiple_items do |t|
    	t.references :form_information, foreign_key: true
      t.timestamps
    end
  end
end
