class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.string :service_type
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
