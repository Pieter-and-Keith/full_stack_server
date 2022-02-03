class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :option
  has_and_belongs_to_many :details

  def transform_booking
    return {
        username: self.user.username,
        email: self.user.email,
        first_name: self.user.details.first_name
        # last_name: self.user.last_name,
        # phone_number: self.user.phone_number,
        # street_number: self.user.street_number,
        # street_name: self.user.street_name,
        # suburb: self.user.suburb,
        # postcode: self.user.postcode,
        # state: self.user.string,
        # rego: self.user.rego,
        # make: self.user.make,
        # model: self.user.model,
        # posted: self.created_at,
        # edited: self.updated_at
    }
  end
  
end
