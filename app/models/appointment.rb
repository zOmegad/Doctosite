class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :city
end
