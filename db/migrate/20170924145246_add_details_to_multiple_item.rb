class AddDetailsToMultipleItem < ActiveRecord::Migration[5.1]
  def change
    add_column :multiple_items, :item, :string
  end
end
