class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :date
      t.text :comment
      t.boolean :finished
      t.boolean :paid
      t.references :user, null: false, foreign_key: true
      t.references :options, null: false, foreign_key: true

      t.timestamps
    end
  end
end
