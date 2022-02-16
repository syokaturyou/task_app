class Schedule < ApplicationRecord
  
  validates :title, presence: true
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :checkend, inclusion: {in: [true, false]}
  
  
  validate :start_end_check
  validate :date_before_start

  def start_end_check
    errors.add(:enddate, "は開始日以降の日を登録してください") unless
    self.startdate < self.enddate 
  end
  
  def date_before_start
    errors.add(:startdate, "は今日以降のものを選択してください") if startdate < Date.today
  end
  
end
