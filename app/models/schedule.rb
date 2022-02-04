class Schedule < ApplicationRecord
  
  validates :title, presence: true
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :schedulememo, length: { in: 10..30 }
  validates :checkend, inclusion: {in: [true, false]}
end
