class Detail < ApplicationRecord
    belongs_to :user

    # validating data when details are getting entered into db
    validates :first_name ,:last_name, :phone_number, :street_number, :street_name, :suburb, :postcode, :state, :rego, :make, :model, presence: true
    validates :postcode, :street_number, numericality: {only_integer: true}

    def transform_detail
        return {
            username: self.user.username,
            email: self.user.email,
            first_name: self.first_name,
            last_name: self.last_name,
            phone_number: self.phone_number,
            street_number: self.street_number,
            street_name: self.street_name,
            suburb: self.suburb,
            postcode: self.postcode,
            state: self.state,
            rego: self.rego,
            make: self.make,
            model: self.model
        }
    end
end
