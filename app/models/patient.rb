class Patient < ApplicationRecord
  belongs_to :city
  has_many :doctors, through: :appointments
  has_many :appointments
end
