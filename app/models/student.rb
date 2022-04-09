class Student < ApplicationRecord
  self.primary_key="rollnumber"
  # validates :name,:rollnumber, presence: true
end
