class Option < ApplicationRecord
    has_many :bookings

    # validating data when details are getting entered into db
    # validates :first_name ,:last_name, :phone_number, :street_number, :street_name, :suburb, :postcode, :state, :rego, :make, :model, presence: true
end
