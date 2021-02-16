class Mobile < ApplicationRecord
  validates :number,uniqueness: true, presence: true
  validate :validate_mobile_number
  def validate_mobile_number
    unless /^(44|\+44|0)7\d{9}$/.match(number)
      errors.add(:number,"#{number} is not a valid uk mobile number")
    end
  end

end
