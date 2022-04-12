class Student < ApplicationRecord
  self.primary_key="rollnumber"
  validates :name,:rollnumber, presence: {message: "required"}
  validates :rollnumber, uniqueness: {message: "rollnumber must be unique"}
end
