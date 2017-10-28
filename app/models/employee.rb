class Employee < ApplicationRecord
  belongs_to :employee_status
  belongs_to :location
  belongs_to :employee_type
  has_many :employee_departments , dependent: :destroy
  has_many :departments, through: :employee_departments


  def fullname
    "#{first_name}".capitalize!  + " " +   "#{last_name}".capitalize!
  end
end
