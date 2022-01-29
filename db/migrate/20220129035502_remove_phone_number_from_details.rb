class RemovePhoneNumberFromDetails < ActiveRecord::Migration[6.1]
  def change
    remove_column :details, :phone_number, :integer
  end
end
