class Department < ApplicationRecord
  belongs_to :location
  has_many :employee_departments, dependent: :destroy
  has_many :employees, through: :employee_departments
end
