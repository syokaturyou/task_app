class Schedule < ApplicationRecord
  
  validates :title, presence: true
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :checkend, inclusion: {in: [true, false]}
end
