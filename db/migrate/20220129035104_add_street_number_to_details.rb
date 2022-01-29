class AddStreetNumberToDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :details, :street_number, :integer
  end
end
