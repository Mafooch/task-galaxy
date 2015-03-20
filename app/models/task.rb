class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :name,
    presence: true
  validates :due_date,
    format: { with: /(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}/,
      message: "Date must be in proper format: 'MM/DD/YYYY'" }
end
