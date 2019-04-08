class Schedule < ApplicationRecord
  has_many :appointments

  def gather_appointments
    self.appointments
  end
  
end
