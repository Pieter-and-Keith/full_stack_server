class Detail < ApplicationRecord
    belongs_to :user

    # def transform_detail

    #     return {
    #         username: self.user.username,
    #         email: self.user.email
    #         first_name: self.first_name,
    #         last_name: self.last_name,
    #         phone_number: self.phone_number,
    #         street_number: self.street_number,
    #         street_name: self.street_name,
    #         suburb: self.suburb,
    #         postcode: self.postcode,
    #         state: self.string,
    #         rego: self.rego,
    #         make: self.make,
    #         model: self.model,
    #         posted: self.created_at,
    #         edited: self.updated_at
    #     }
    # end
end
