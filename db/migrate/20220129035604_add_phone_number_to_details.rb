class AddPhoneNumberToDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :details, :phone_number, :string
  end
end
