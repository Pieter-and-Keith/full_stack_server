class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :option

  def transform_booking
    return {
      booking_id: self.id,
      user_id: self.user.id,
      username: self.user.username,
      email: self.user.email,
      date: self.date,
      comment: self.comment,
      finished: self.finished,
      paid: self.paid,
      service_type: self.option.service_type,
      description: self.option.description,
      price: self.option.price,
      first_name: self.user.details[0].first_name,
      last_name: self.user.details[0].last_name,
      phone_number: self.user.details[0].phone_number,
      street_number: self.user.details[0].street_number,
      street_name: self.user.details[0].street_name,
      suburb: self.user.details[0].suburb,
      postcode: self.user.details[0].postcode,
      state: self.user.details[0].state,
      rego: self.user.details[0].rego,
      make: self.user.details[0].make,
      model: self.user.details[0].model
    }
    
  end
end
