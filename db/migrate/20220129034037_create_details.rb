class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :street_name
      t.string :suburb
      t.integer :postcode
      t.string :state
      t.string :rego
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
